(* AST for expressions *)
open GT
open Printf
(**************************** Expr code ******************************************************)
@type expr =
| Var   of string
| Const of int
| Add   of expr * expr
| Mul   of expr * expr with show

(* AST statements/commands *)
@type stmt =
| Skip
| Assign of string * expr
| Read   of string
| Write  of expr
| Seq    of stmt * stmt with show

(* State update primitive *) 
let update st x v = fun y -> if y = x then v else st y 

(**************************** Intepreter code ******************************************************)
(* Interpreter for expressions *)
let rec eval expr st = 
  let eval' e = eval e st in
  match expr with
  | Var   x     -> st x
  | Const z     -> z
  | Add  (x, y) -> eval' x + eval' y
  | Mul  (x, y) -> eval' x * eval' y

(* Interpreter for statements *)
let run stmt input =
  let rec run' stmt ((st, input, output) as conf) =
    match stmt with
    | Skip          -> conf
    | Assign (x, e) -> (update st x (eval e st), input, output)
    | Read    x     -> 
       let z :: input' = input in
       (update st x z, input', output)
    | Write   e     -> (st, input, output @ [eval e st])
    | Seq (s1, s2)  -> run' s1 conf |> run' s2 
  in
  let (_, _, output) = 
    run' stmt ((fun _ -> failwith "undefined variable"), input, []) 
  in
  output


(**************************** Stack Machine code ******************************************************)

type instr =
| READ
| WRITE
| PUSH of int
(* Инструкция LD x означает "возьми значение, ассоциированое с переменной x, и положи его на стек". (load) *)
| LD   of string
(* Инструкция ST x означает "возьми значение, лежащее на верхушке стека и ассоциируй его с переменной x" (store) *)
| ST   of string
| ADD  
| MUL

type prg = instr list

let stack_machine_run prg input =
  let rec stack_machine_run' prg ((stack, st, input, output) as conf) =
    match prg with
    | []        -> conf
    | i :: prg' ->
        stack_machine_run' prg' (
          match i with
          | READ  -> let z :: input' = input in
                     (z :: stack, st, input', output)
          | WRITE -> let z :: stack' = stack in
                     (stack', st, input, output @ [z])
	  			| PUSH n -> (n :: stack, st, input, output)
          
					| LD   x -> (st x :: stack, st, input, output)
	  			
					| ST   x -> let z :: stack' = stack in
                      (stack', update st x z, input, output)
	  			
					| _ -> let y :: x :: stack' = stack in
                 ((match i with ADD -> (+) | _ -> ( * )) x y :: stack', st, input, output)
        )
  in
  (* todo что это значит?*)
  let (_, _, _, output) = 
    stack_machine_run' prg ([], 
              (fun _ -> failwith "undefined variable"),
              input,
              []
             ) 
  in
  output

let rec comp_expr = function 
| Var x      -> [LD   x]
| Const n    -> [PUSH n]
| Add (x, y) -> (comp_expr x) @ (comp_expr y) @ [ADD]
| Mul (x, y) -> (comp_expr x) @ (comp_expr y) @ [MUL]

let rec comp = function
| Skip          -> []
| Assign (x, e) -> comp_expr e @ [ST x]
| Read    x     -> [READ; ST x]
| Write   e     -> comp_expr e @ [WRITE]
| Seq    (l, r) -> comp l @ comp r


(**************************** X86 Compiler code ******************************************************)
module X86 =
  struct

	module StringSet = Set.Make (String)


	(* R - регистр S - Стек L - литерал M - место в памяти*)
    type opnd = R of int | S of int | L of int | M of string

	(* Регистры. *)
  let regs  = [|"%eax"; "%ebx"; "%ecx"; "%edx"; "%esi"; "%edi"|]
  let nregs = Array.length regs
	
	let stackAddDep = ref 0
	let variables = ref StringSet.empty

	let wordSize = 4
	let eax = R 0
	let edx = R 3

	(* Набор инструкций*)
    type instr =
    | Add  of opnd * opnd
    | Mul  of opnd * opnd
    | Mov  of opnd * opnd
    | Push of opnd
    | Pop  of opnd
    | Call of string
    | Ret


	let allocate stack =
	  match stack with
	  | []                                -> R 0
	  
		| (S n)::_                          -> stackAddDep := max (n+2) !stackAddDep; S (n+1)
		(* используем регистры общего назначения [ax-dx] *)
	  | (R n)::_ when n < nregs - 3 -> R (n+1)
	  
		| _                                 -> stackAddDep := max 1 !stackAddDep; S 0
	
	(*  *)
    let rec sint prg sstack =
      match prg with
      | []        -> [], []
      | i :: prg' ->
					let (code, sstack') = 
	    	  match i with
	    	  | PUSH n -> 
                let s = allocate sstack in
                [Mov (L n, s)], s :: sstack
          
					| LD x ->
							variables := StringSet.add x !variables;
            	let s = allocate sstack in
              [Mov (M x, s)], s :: sstack
	    		
					| ST x ->
							variables := StringSet.add x !variables;
            	let s :: sstack' = sstack in
              [Mov (s, M x)], sstack'
					
					(* вызов С++ функции для чтения из stdin *)
					| READ -> [Call "fnread"], [eax]
					(* вызов С++ функции для вывода в stdout *)
					| WRITE -> let s :: sstack' = sstack in
						[Mov (s, eax); Push eax; Call "fnwrite"; Pop eax], sstack'
					
					| ADD -> 
						let x::y::sstack'= sstack in
						
						(match x, y with 
							| S _, S _ -> 
								(*оба в стеке, достанем x и можно совершать операции, то же самое для mul*)
								[Mov (x, eax); Add (eax, y)], y::sstack'

							| _ -> [Add (x, y)], y::sstack'
						)
			
					| MUL -> 
						let x::y::sstack'= sstack in
							(match x, y with 
								| S _, S _ -> 
										[Mov (x, eax); Mul (eax, y)], y::sstack'
								| _ -> [Mul (x, y)], y::sstack'
					)
          in
					let (code', sstack'') = sint prg' sstack' in
          code @ code', sstack''

	(* Команда для печати ассемблерного кода в свой *)
	let printAsmCode instr =
	  (* функция для работы с регистрами. *)
	  
	  let opStr op =
		match op with
		| R i -> regs.(i)
		| S i -> Printf.sprintf "-%d(%%ebp)" (i * wordSize)
		| L i -> Printf.sprintf "$%d" i
		| M x -> x
	  in
	  (* Нужно помнить что код на Ocaml стоит читать наоборот. *)
	  (* Вместо пробелов используется табуляция.*)
	  match instr with
	  | Add (x, y) -> Printf.sprintf "addl\t%s,\t%s" (opStr x) (opStr y)
	  | Mul (x, y) -> Printf.sprintf "imull\t%s,\t%s" (opStr x) (opStr y)
	  | Mov       (x, y) -> Printf.sprintf "movl\t%s,\t%s"  (opStr x) (opStr y)
	  | Push           x -> Printf.sprintf "pushl\t%s" (opStr x)
	  | Pop            x -> Printf.sprintf "popl\t%s"  (opStr x)
	  | Call           f -> Printf.sprintf "call\t%s" f
	  | Ret              -> "ret"


	(* Преобразование программы в код на Ассемблере.*)
	let toAsm prog =
	  let allText = ref "" in
      (* добавляет текст к allText *)
    let append = fun newText -> allText := Printf.sprintf "%s%s" !allText newText in
	  
      (* что-то вроде T из лиспа *)
	  let execM = fun _ -> () in
	
	  let code = sint (comp prog) [] in
      (*Предварительные команды*)
	  append "\t.text\n\t.globl\tmain\n";
	  (* Блок переменных*)
	  List.iter (fun x -> append (Printf.sprintf "\t.comm\t%s,\t%d,\t%d\n" x wordSize wordSize))
		(StringSet.elements !variables);
	  append "main:\n";
	  (* Тут начинается блок Main*)
	  
	  (* обработки ошибок *)
	  if !stackAddDep != 0 then
		 execM [append "\tpushl\t%ebp\n"; append "\tmovl\t%esp,\t%ebp\n";append (Printf.sprintf "\tsubl\t$%d,\t%%esp\n" (!stackAddDep * wordSize))];
	  
	  (* блок кода *)
	  List.iter
		(fun i -> append (Printf.sprintf "\t%s\n" (printAsmCode i)))
		(fst code);
	  
	  (* обработки ошибок *)
	  if !stackAddDep != 0 then
		 execM [append "\tmovl\t%ebp,\t%esp\n";append "\tpopl\t%ebp\n"];
	  (* окончание в файле для выхода. *)
	  append "\txorl\t%eax,\t%eax\n";
	  append "\tret\n";
	  !allText;

end

(***************************************************** EDSL***************************************************)
(* EDSL = Embedded Domain-Specific Language
          Встроенный предметно-ориентированный язык
   Deep Embedding
*)

let inc x = x + 1

let ( !  ) x   = Var   x
let const  n   = Const n
let ( +  ) x y = Add  (x, y)
let ( *  ) x y = Mul  (x, y)

let read  x  = Read  x
let write e  = Write e
let (:=) x e = Assign (x, e)
let skip     = Skip
let (|>) l r = Seq (l, r)

(*
  read (x);
  read (y);
  z := x * y + 1;
  write (z)
*)
  
let p =
  (* Взять x и y Прибавить к ним константу равную 1 *)
  read "x" |>
  read "y" |>
  ("z" := !"x" * !"y" + const 1) |>
  write !"z"

let _ =
  (* Запуск интепретатора*)
  Printf.printf "%s\n" (show(list) (show(int)) @@ run p [10; 20]);
  (* Запуск компилятора в стековой машине *)
  Printf.printf "%s\n" (show(list) (show(int)) @@ stack_machine_run (comp p) [10; 20]) 
  
  (* Код сохранения полученного кода в файл.*)
  let outf = open_out "main.s" in
  Printf.fprintf outf "%s\n" (X86.toAsm p);
  close_out outf
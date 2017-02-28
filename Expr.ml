(* AST for expressions *)
open GT

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

(* Interpreter for expressions *)
let rec eval expr st = 
  let eval' e = eval e st in
  match expr with
  | Var   x     -> st x
  | Const z     -> z
  | Add  (x, y) -> eval' x + eval' y
  | Mul  (x, y) -> eval' x * eval' y

(* State update primitive *) 
let update st x v = fun y -> if y = x then v else st y 

(* Interpreter for statements *)
let run stmt input =
  let rec run' stmt ((st, input, output) as conf) =
    match stmt with
    | Skip          -> conf
    | Assign (x, e) -> (update st x (eval e st), input, output)
    | Read    x     -> let z :: input' = input in
					   (update st x z, input', output)
    | Write   e     -> (st, input, output @ [eval e st])
    | Seq (s1, s2)  -> run' s1 conf |> run' s2 
  in
  let (_, _, output) = 
    run' stmt ((fun _ -> failwith "undefined variable"), input, []) 
  in
  output

(* Stack Machine *)
type instr =
| READ
| WRITE
| PUSH of int
| LD   of string
| ST   of string
| ADD  
| MUL

type prg = instr list

let srun prg input =
  let rec srun' prg ((stack, st, input, output) as conf) =
    match prg with
    | []        -> conf
    | i :: prg' ->
        srun' prg' (
          match i with
          | READ   -> let z :: input' = input in
                      (z :: stack, st, input', output)				  
          | WRITE  -> let z :: stack' = stack in
                      (stack', st, input, output @ [z])			  
		  | PUSH n -> (n :: stack, st, input, output)
          | LD   x -> (st x :: stack, st, input, output)
	      | ST   x -> let z :: stack' = stack in
                      (stack', update st x z, input, output)		  
	      | _ -> let y :: x :: stack' = stack in
                 ((match i with ADD -> (+) | _ -> ( * )) x y :: stack', 
                  st, 
                  input, 
                  output
                 )
        )
  in
  let (_, _, _, output) = 
    srun' prg ([], 
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

module X86 =
  struct
	module StrSet = Set.Make (String)
	
    type opnd = R of int | S of int | L of int | M of string

    let regs  = [|"%ebx"; "%ecx"; "%esi"; "%edi"; "%eax";|]
    let nregs = Array.length regs
	let vars = ref StrSet.empty
	let stack_size = ref 0
	
	let word_size = 4
	(*usable regs*)
	let ebx = R 0
	let ecx = R 1
	let esi = R 2
	let edi = R 3
	(*Used for func_call and results *)
	let eax = R 4
	
    type instr =
    | Add  of opnd * opnd
    | Mul  of opnd * opnd
    | Mov  of opnd * opnd
    | Push of opnd
    | Pop  of opnd
    | Call of string
    | Ret

    let allocate = function
    | []                          -> R 0
    | R i :: _ when i < nregs - 2 -> R (i+1)
    | S i :: _                    -> stack_size := max !stack_size (i+2); S (i+1) 
    | _                           -> stack_size := max !stack_size 1; S 0

    let rec sint prg sstack =
      match prg with
      | []        -> [], []
      | i :: prg' ->
          let (code, sstack') = 
				match i with
				| PUSH n -> let s = allocate sstack in
								[Mov (L n, s)], s :: sstack
				| LD x   -> if ((StrSet.exists (fun i -> i = x) !vars) = false) then vars := StrSet.add x !vars;
							let s = allocate sstack in
								[Mov (M x, s)], s :: sstack
				| ST x   ->	if ((StrSet.exists (fun i -> i = x) !vars) = false)then vars := StrSet.add x !vars;
							let s :: sstack' = sstack in
								[Mov (s, M x)], sstack' 
				| READ   -> [Call "Read"], eax::sstack
				| WRITE  -> let s :: sstack' = sstack in 
								[Mov (s, eax);
								 Call "Write"], sstack' 								 
				| ADD 	 -> let x::y::sstack'= sstack in
								(match x, y with 
								| S _, S _ -> [Mov (x, eax); Add (eax, y)], y::sstack'
								| _ -> [Add (x, y)], y::sstack')
				| MUL 	 -> let x::y::sstack'= sstack in
								(match x, y with 
								| S _, S _ -> [Mov (x, eax); Mul (eax, y)], y::sstack'
								| _ -> [Mul (x, y)], y::sstack')
							
          in
          let (code', sstack'') = sint prg' sstack' in
          code @ code', sstack''

	(*Functions for print asm code *)
	let printOp op =
		match op with
		| R i -> regs.(i)
		| S i -> Printf.sprintf "-%d(%%ebp)" ((i+1) * word_size)
		| L i -> Printf.sprintf "$%d" i
		| M x -> x
		
	let printInstr instr =
	  match instr with
	  | Add (x, y) -> Printf.sprintf "addl\t%s,\t%s" (opnd x) (opnd y)
	  | Mul (x, y) -> Printf.sprintf "imull\t%s,\t%s" (opnd x) (opnd y)
	  | Mov (x, y) -> Printf.sprintf "movl\t%s,\t%s"  (opnd x) (opnd y)
	  | Push           x -> Printf.sprintf "pushl\t%s" (opnd x)
	  | Pop            x -> Printf.sprintf "popl\t%s"  (opnd x)
	  | Call           f -> Printf.sprintf "call\t%s" f
	  | Ret              -> "ret"

	
	let printAsmCode code = let str_instr = List.fold_left (fun acc i -> Printf.sprintf "%s\t%s\n" acc (printInstr i)) ("") (fst code) in 
							(* Need for get information from stack/heap*)
							if !stack_size != 0  then "\tpushl\t%%ebp\n" ^
													  "\tmovl\t%%esp,\t" ^
													  (Printf.sprintf "%%ebp\n\tsubl\t$%d,%%esp\n" (!stack_size * word_size)) ^
													  str_instr ^
													  "\tmovl\t%%ebp,\t%%esp\n" ^
													  "\tpopl\t%%ebp\n"
												 else str_instr
	
	let printVars code = List.fold_left (fun acc i -> Printf.sprintf "%s%s\t.int\n" (acc) (i)) ("") (StrSet.elements !vars)
	
	let genasm p =	let code = sint (comp p) [] in 
						"\t.data\n\n" ^
					    printVars code ^ "\n" ^ 
						"\t.text\n" ^
						"\t.global \tmain\n\n" ^
						"main:\n" ^
						printAsmCode code ^
						"\txorl\t%eax,\t%eax\n" ^
						"\tret\n"  
		
		
      
  end
(* AST for expressions *)
open GT
open Printf

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
          | READ  -> let z :: input' = input in
                     (z :: stack, st, input', output)
          | WRITE -> let z :: stack' = stack in
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

    module StringSet = Set.Make (String)

    type opnd = R of int | S of int | L of int | M of string

    let regs  = [|"%eax"; "%ebx"; "%ecx"; "%esi"; "%edi"|]
    let nregs = Array.length regs

    let stackAddDep = ref 0
    let variables        = ref StringSet.empty
    let wordSize    = 4
    let eax         = R 0
    let edx         = R 3

    type instr =
    | Add  of opnd * opnd
    | Mul  of opnd * opnd
    | Mov  of opnd * opnd
    | Push of opnd
    | Pop  of opnd
    | Call of string
    | Ret

(*
    let allocate = function
    | []                          -> R 0
    | R i :: _ when i < nregs - 1 -> R (i+1)
    | S i :: _                    -> S (i+1)
    | _                           -> S 0 
*)
 
 
    let allocate stack =
      match stack with
        | []                          -> R 0
	| (S n)::_                    -> stackAddDep := max (n+2) !stackAddDep; S (n+1)
	| (R n)::_ when n < nregs - 3 -> R (n+1) 		
        | _                           -> stackAddDep := max 1     !stackAddDep; S 0


    let rec sint prg sstack =
      match prg with
      | []        -> [], []
      | i :: prg' ->
          let (code, sstack') = 
	    match i with
	    | PUSH n -> 
                let s = allocate sstack in
                [Mov (L n, s)], s :: sstack
            | LD   x ->
                variables := StringSet.add x !variables;
                let s = allocate sstack in
                [Mov (M x, s)], s :: sstack
	    | ST   x ->
                variables := StringSet.add x !variables;
                let s :: sstack' = sstack in
                [Mov (s, M x)], sstack' 
           
            (*READ, WRITE, ADD and MUL*)

            | READ   -> (* call some function to read from stdin *), [eax]

	    | WRITE  -> let s :: sstack' = sstack in
		        (* call some function to write in stdout *), sstack'
			
            | ADD    -> 
		let x::y::sstack'= sstack in
		(match x, y with 
		| S _, S _ -> [Mov (x, eax); Add (eax, y)], y::sstack'
		| _        -> [Add (x, y)], y::sstack')
	
            | MUL    -> 
		let x::y::sstack'= sstack in
		(match x, y with 
		| S _, S _ -> [Mov (x, eax); Mul (eax, y)], y::sstack'
                | _        -> [Mul (x, y)], y::sstack')

          in
          let (code', sstack'') = sint prg' sstack' in
          code @ code', sstack''
(*
    let compile stmt = 
      sint (comp stmt) 
*)

    let printAsmCode instr =
        let opStr op =
	    match op with
	        | R i -> regs.(i)
		| S i -> Printf.sprintf "-%d(%%ebp)" (i * wordSize)
		| L i -> Printf.sprintf "$%d" i
		| M x -> x
        in
        match instr with
	    | Add (x, y) -> Printf.sprintf "addl\t%s,\t%s"  (opStr x) (opStr y)
	    | Mul (x, y) -> Printf.sprintf "imull\t%s,\t%s" (opStr x) (opStr y)
	    | Mov (x, y) -> Printf.sprintf "movl\t%s,\t%s"  (opStr x) (opStr y)
	    | Push x     -> Printf.sprintf "pushl\t%s"      (opStr x)
	    | Pop  x     -> Printf.sprintf "popl\t%s"       (opStr x)
	    | Call f     -> Printf.sprintf "call\t%s"       f
	    | Ret        -> "ret"


	let toAsm prog =
	    let text = ref "" in
    let append = fun newText -> text := Printf.sprintf "%s%s" !text newText in
	  
	let code = sint (comp prog) [] in
            List.iter
		(fun x -> append (Printf.sprintf "\t.comm\t%s,\t%d,\t%d\n" x))
		(StringSet.elements !variables);
            append "\t.text\n\t.globl\tmain\n";
	    append "main:\n";
	    List.iter
		(fun i -> append (Printf.sprintf "\t%s\n" (printAsmCode i)))
		(fst code);
	    append "\txorl\t%eax,\t%eax\n";
	    append "\tret\n";
        !text;
  end

open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string | MR of int | SR of int

let regs  = [|"%ebx"; "%ecx"; "%esi"; "%edi"; "%esp"; "%ebp";"%eax"; "%edx"|]
let         [|ebx; ecx; esi; edi; esp; ebp; eax; edx;|] = Array.mapi (fun i _ -> R i) regs
let small_regs = [|"%al"; "%bl";"%cl";"%dl"|]
let         [|al;bl;cl;dl|] = Array.mapi (fun i _ -> SR i) small_regs 
let mid_regs = [|"%ax"; "%bx";"%cx";"%dx";"%si";"%di";"%sp";"%bp"|]
let 	    [|ax;bx;cx;dx;si;di;sp;bp|] = Array.mapi (fun i _ -> MR i) mid_regs

let nregs = Array.length regs - 4

type instr =
(*Arith*)
| Div  of opnd
| Sub  of opnd * opnd
| Add  of opnd * opnd
| Mul  of opnd * opnd
(*Bool*)
| And  of opnd * opnd
| Or   of opnd * opnd
(*Common*)
| Cmp  of opnd * opnd
| Set  of string * opnd
| Mov  of opnd * opnd
| Push of opnd
| Pop  of opnd
| Call of string
| Ret
    
module S = Set.Make (String)
    
class env =
  object (this)
    val locals = S.empty
    val depth  = 0
	
    method allocate = function
      | []                          -> this, R 0
      | R i :: _ when i < nregs - 1 -> this, R (i+1)
      | S i :: _                    -> {< depth = max depth (i+1) >}, S (i+1)
      | _                           -> {< depth = max depth 1 >}, S 1 
	    
    method local     x = {< locals = S.add x locals >}
    method get_locals  = S.elements locals
    method get_depth   = depth
  end
    
let rec sint env prg sstack =
  match prg with
  | []        -> env, [], []
  | i :: prg' ->
      let env, code, sstack' = 
	match i with
	    | PUSH n ->  
            let env', s = env#allocate sstack in
            env', [Mov (L n, s)], s :: sstack
        | LD x ->
            let env'     = env#local x in
            let env'', s = env'#allocate sstack in
            env'', (match s with 
			| S _ -> [Mov (M x, eax); Mov (eax, s)]
			| _   -> [Mov (M x, s)]), s::sstack
	    | ST x ->
            let env' = env#local x in
            let s :: sstack' = sstack in
            env', [Mov (s, M x)], sstack' 
        | READ  ->
            env, [Call "lread"], eax::sstack
        | WRITE -> let s :: sstack' = sstack in 
            env, [Push s; Call "lwrite"; Pop eax], sstack'
        | BIN f ->
            let x::(y::_ as sstack') = sstack in
			let transform_to_01 t = [Mov (t, eax); And (t, eax); Mov (L 0, eax); Set("ne", al)] in
			let instrCode a b = (match f with 
				(* Arith *)
				| "+" -> [Add (a, b)]
				| "*" -> [Mul (a, b)]
				| "-" -> [Sub (a, b)]
				| "/" -> [Mov (b,eax);Mov (L 0, edx); Div a; Mov (eax, b)]
				| "%" -> [Mov (b,eax);Mov (L 0, edx); Div a; Mov (edx, b)]
				(*Bool 0/1*) 
				| "&&" -> transform_to_01 b @ [Mov (eax, b)] @ transform_to_01 a @ [And(b,eax); Mov(L 0, eax); Set("ne", al); Mov (eax, b)]  
				| "||" -> transform_to_01 b @ [Mov (eax, b)] @ transform_to_01 a @ [Or(b,eax); Mov(L 0, eax); Set("ne", al); Mov (eax, b)]
				(*Bool Arith*)
				| "==" -> [Cmp(a,b); Mov (L 0, edx); Set("e", dl) ;Mov (edx, b)]
				| "!=" -> [Cmp(a,b); Mov (L 0, edx); Set("ne", dl);Mov (edx, b)]
				| "<=" -> [Cmp(a,b); Mov (L 0, edx); Set("le", dl);Mov (edx, b)]
				| ">=" -> [Cmp(a,b); Mov (L 0, edx); Set("ge", dl);Mov (edx, b)]
				| ">"  -> [Cmp(a,b); Mov (L 0, edx); Set("g", dl) ;Mov (edx, b)]
				| "<"  -> [Cmp(a,b); Mov (L 0, edx); Set("l", dl) ;Mov (edx, b)]
              ) in
			   match x, y with
				  | S _, S _ -> env, [Mov (y, eax)] @ instrCode x eax @[Mov (eax, y)], sstack'
				  | _        -> env, instrCode x y, sstack'  
      in
      let env, code', sstack'' = sint env prg' sstack' in
      env, code @ code', sstack''
	
(*Functions for print asm code *)
let printOp op =
	match op with
	| R i -> regs.(i)
	| S i -> Printf.sprintf "-%d(%%ebp)" (i * 4)
	| L i -> Printf.sprintf "$%d" i
	| M x -> x
	| SR i -> small_regs.(i)
	| MR i -> mid_regs.(i)
	
let printInstr instr =
  match instr with
  (*Arith*)
  | Sub (x, y) -> Printf.sprintf "subl\t%s,\t%s"  (printOp x) (printOp y)
  | Div  x     -> Printf.sprintf "idivl\t%s"      (printOp x) 
  | Add (x, y) -> Printf.sprintf "addl\t%s,\t%s"  (printOp x) (printOp y)
  | Mul (x, y) -> Printf.sprintf "imull\t%s,\t%s" (printOp x) (printOp y)
  (*Bool*)
  | And (x, y) -> Printf.sprintf "andl\t%s,\t%s"  (printOp x) (printOp y)
  | Or  (x, y) -> Printf.sprintf "orl\t%s,\t%s"   (printOp x) (printOp y)
  (*Common*)
  | Set (s, x) -> Printf.sprintf "set%s\t%s" s    (printOp x)
  | Cmp (x, y) -> Printf.sprintf "cmpl\t%s,\t%s"  (printOp x) (printOp y)
  | Mov (x, y) -> Printf.sprintf "movl\t%s,\t%s"  (printOp x) (printOp y)
  | Push     x -> Printf.sprintf "pushl\t%s"      (printOp x)
  | Pop      x -> Printf.sprintf "popl\t%s"       (printOp x)
  | Call     f -> Printf.sprintf "call\t%s"  f
  | Ret        -> "ret"


let printAsmCode code = List.fold_left (fun acc i -> Printf.sprintf "%s\t%s\n" (acc) (printInstr i)) ("") (code)
							
let printVars env code = List.fold_left (fun acc i -> Printf.sprintf "%s%s:\t.int\t0\n" (acc) (i)) ("") (env#get_locals)

let compile p =	let env, code, [] = sint (new env) (Compile.Program.compile p) [] in 
						"\t.data\n" ^
					    printVars env code ^ "\n\n" ^
						"\t.text\n" ^
						"\t.global \tmain\n\n" ^
						"main:\n" ^
						"\tpushl\t%ebp\n" ^
						"\tmovl\t%esp,\t%ebp\n" ^
						(Printf.sprintf "\tsubl\t$%d,%%esp\n" (env#get_depth * 4)) ^
						printAsmCode code ^
						"\tmovl\t%ebp,\t%esp\n" ^
						"\tpopl\t%ebp\n" ^
						"\txorl\t%eax,\t%eax\n" ^
						"\tret\n"  
						
let build stmt name =
  let outf = open_out (Printf.sprintf "%s.s" name) in
  Printf.fprintf outf "%s" (compile stmt);
  close_out outf;
  let inc = try Sys.getenv "RC_RUNTIME" with _ -> "../runtime" in
  Sys.command (Printf.sprintf "gcc -m32 -o %s %s/runtime.o %s.s" name inc name)


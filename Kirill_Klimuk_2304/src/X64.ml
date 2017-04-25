open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string | MR of int | SR of int | UMR of int

let regs  = [|"%rbx"; "%rcx"; "%rsi"; "%rdi"; "%rsp"; "%rbp";"%rax"; "%rdx"|]
let         [|rbx; rcx; rsi; rdi; rsp; rbp; rax; rdx;|] = Array.mapi (fun i _ -> R i) regs
let uppermid_regs  = [|"%ebx"; "%ecx"; "%esi"; "%edi"; "%esp"; "%ebp";"%eax"; "%edx"|]
let         [|ebx; ecx; esi; edi; esp; ebp; eax; edx;|] = Array.mapi (fun i _ -> UMR i) regs
let mid_regs = [|"%ax"; "%bx";"%cx";"%dx";"%si";"%di";"%sp";"%bp"|]
let 	    [|ax;bx;cx;dx;si;di;sp;bp|] = Array.mapi (fun i _ -> MR i) mid_regs 
let small_regs = [|"%al"; "%bl";"%cl";"%dl"|]
let         [|al;bl;cl;dl|] = Array.mapi (fun i _ -> SR i) small_regs 

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
| Cqo
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
			| S _ -> [Mov (M x, rax); Mov (rax, s)]
			| _   -> [Mov (M x, s)]), s::sstack
	    | ST x ->
            let env' = env#local x in
            let s :: sstack' = sstack in
            env', [Mov (s, M x)], sstack' 
        | READ  ->
            env, [Call "lread"], rax::sstack
        | WRITE -> let s :: sstack' = sstack in 
            env, [Mov(rdi, rax); Mov(s, rdi); Call "lwrite"; Mov(rax,rdi)], sstack'
        | BIN f ->
            let x::(y::_ as sstack') = sstack in
			let transform_to_01 t = [Mov (t, rdx); And (t, rdx); Mov (L 0, rdx); Set("ne", dl)] in
			let instrCode a b = (match f with 
				(* Arith *)
				| "+" -> [Add (a, b)]
				| "*" -> [Mul (a, b)]
				| "-" -> [Sub (a, b)]
				| "/" -> [Mov (b,rax); Cqo; Div a; Mov (rax, b)]
				| "%" -> [Mov (b,rax); Cqo; Div a; Mov (rdx, b)]
				(*Bool 0/1*) 
				| "&&" -> transform_to_01 b @ [Mov (rdx, b)] @ transform_to_01 a @ [And(b,rdx); Mov(L 0, rdx); Set("ne", dl); Mov (rdx, b)]  
				| "||" -> transform_to_01 b @ [Mov (rdx, b)] @ transform_to_01 a @ [Or(b,rdx); Mov(L 0, rdx); Set("ne", dl); Mov (rdx, b)]
				(*Bool Arith*)
				| "==" -> [Cmp(a,b); Mov (L 0, rdx); Set("e", dl) ;Mov (rdx, b)]
				| "!=" -> [Cmp(a,b); Mov (L 0, rdx); Set("ne", dl);Mov (rdx, b)]
				| "<=" -> [Cmp(a,b); Mov (L 0, rdx); Set("le", dl);Mov (rdx, b)]
				| "<"  -> [Cmp(a,b); Mov (L 0, rdx); Set("l", dl) ;Mov (rdx, b)]
				| ">=" -> [Cmp(a,b); Mov (L 0, rdx); Set("ge", dl);Mov (rdx, b)]
				| ">"  -> [Cmp(a,b); Mov (L 0, rdx); Set("g", dl) ;Mov (rdx, b)]
				
              ) in
			   match x, y with
				  | S _, S _ -> env, [Mov (y, rax)] @ instrCode x rax @[Mov (rax, y)], sstack'
				  | _        -> env, instrCode x y, sstack'  
      in
      let env, code', sstack'' = sint env prg' sstack' in
      env, code @ code', sstack''
	
(*Functions for print asm code *)
let printOp op =
	match op with
	| R i -> regs.(i)
	| S i -> Printf.sprintf "-%d(%%rbp)" (i * 8)
	| L i -> Printf.sprintf "$%d" i
	| M x -> x
	| SR i -> small_regs.(i)
	| MR i -> mid_regs.(i)
	| UMR i -> uppermid_regs.(i)
	
let printInstr instr =
  match instr with
  (*Arith*)
  | Sub (x, y) -> Printf.sprintf "subq\t%s,\t%s"  (printOp x) (printOp y)
  | Div  x     -> Printf.sprintf "idivq\t%s"      (printOp x) 
  | Add (x, y) -> Printf.sprintf "addq\t%s,\t%s"  (printOp x) (printOp y)
  | Mul (x, y) -> Printf.sprintf "imulq\t%s,\t%s" (printOp x) (printOp y)
  (*Bool*)
  | And (x, y) -> Printf.sprintf "andq\t%s,\t%s"  (printOp x) (printOp y)
  | Or  (x, y) -> Printf.sprintf "orq\t%s,\t%s"   (printOp x) (printOp y)
  (*Common*)
  | Set (s, x) -> Printf.sprintf "set%s\t%s" s    (printOp x)
  | Cmp (x, y) -> Printf.sprintf "cmpq\t%s,\t%s"  (printOp x) (printOp y)
  | Mov (x, y) -> Printf.sprintf "movq\t%s,\t%s"  (printOp x) (printOp y)
  | Push     x -> Printf.sprintf "pushq\t%s"      (printOp x)
  | Pop      x -> Printf.sprintf "popq\t%s"       (printOp x)
  | Call     f -> Printf.sprintf "call\t%s"  f
  | Cqo 	   -> "cqto"
  | Ret        -> "ret"


let printAsmCode code = List.fold_left (fun acc i -> Printf.sprintf "%s\t%s\n" (acc) (printInstr i)) ("") (code)
							
let printVars env = List.fold_left (fun acc i -> Printf.sprintf "%s%s:\t.quad\t0\n" (acc) (i)) ("") (env#get_locals)

let compile p =	let env, code, [] = sint (new env) (Compile.Program.compile p) [] in 
						"\t.data\n" ^
					    printVars env ^ "\n\n" ^
						"\t.text\n" ^
						"\t.global \tmain\n\n" ^
						"main:\n" ^
						"\tpushq\t%rbp\n" ^
						"\tmovq\t%rsp,\t%rbp\n" ^
						(Printf.sprintf "\tsubq\t$%d,%%rsp\n" (env#get_depth * 8)) ^
						printAsmCode code ^
						"\tmovq\t%rbp,\t%rsp\n" ^
						"\tpopq\t%rbp\n" ^
						"\txorq\t%rax,\t%rax\n" ^
						"\tret\n"  
						
let build stmt name =
  let outf = open_out (Printf.sprintf "%s.s" name) in
  Printf.fprintf outf "%s" (compile stmt);
  close_out outf;
  let inc = try Sys.getenv "RC_RUNTIME" with _ -> "../runtime" in
  Sys.command (Printf.sprintf "gcc -m64 -o %s %s/runtime.o %s.s" name inc name)


open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string

let regs  = [|"%eax"; "%ebx"; "%ecx"; "%esi"; "%edi"; "%edx"; "%esp"; "%ebp"|]
let nregs = Array.length regs - 3


let [|al; dl|] = [|"%al"; "%dl"|]

let [|eax; ebx; ecx; esi; edi; edx; esp; ebp|] = Array.mapi (fun i _ -> R i) regs

type instr =
| Add  of opnd * opnd
| Sub of opnd * opnd
| Div of opnd
| Cltd
| Mul  of opnd * opnd
| Mov  of opnd * opnd
| Push of opnd
| Pop  of opnd
| Call of string
| Ret
| AndBin of opnd *opnd
| OrBin  of opnd *opnd
| Cmp  of opnd *opnd
| Setg of string
| Setl  of string
| Sete of string
| Setne  of string
| Setge of string
| Setle of string

let to_string buf code =      
  let instr =
    let opnd = function
      | R i -> regs.(i)
      | S i -> Printf.sprintf "%d(%%ebp)" (-i * 4)
      | L i -> Printf.sprintf "$%d" i
      | M s -> s  
    in
    function
      | Add (x, y) -> Printf.sprintf "addl\t%s,%s"  (opnd x) (opnd y)
      | Mul (x, y) -> Printf.sprintf "imull\t%s,%s" (opnd x) (opnd y)
      | Mov (x, y) -> Printf.sprintf "movl\t%s,%s"  (opnd x) (opnd y)
      | Push x     -> Printf.sprintf "pushl\t%s"    (opnd x)
      | Pop  x     -> Printf.sprintf "popl\t%s"     (opnd x)
      | Call x     -> Printf.sprintf "call\t%s"      x
      | Ret        -> "ret" 
      | Cltd -> "cltd"
	  | Sub (x, y)    -> Printf.sprintf "subl\t%s,%s"  (opnd x) (opnd y) 
	  | Div  x        -> Printf.sprintf "idiv\t%s"     (opnd x) 
	  | AndBin (x, y) -> Printf.sprintf "andl\t%s,%s"  (opnd x) (opnd y) 
	  | OrBin (x, y)  -> Printf.sprintf "orl\t%s,%s"   (opnd x) (opnd y)
	  | Cmp (x, y)    -> Printf.sprintf "cmpl\t%s,%s"  (opnd x) (opnd y) 
	  | Setg x        -> Printf.sprintf "setg\t%s"     x 
	  | Setl x        -> Printf.sprintf "setl\t%s"     x 
	  | Sete x        -> Printf.sprintf "sete\t%s"     x
	  | Setne x       -> Printf.sprintf "setne\t%s"    x 
	  | Setge x       -> Printf.sprintf "setge\t%s"    x 
	  | Setle x       -> Printf.sprintf "setle\t%s"    x 
  in
  let out s = 
    Buffer.add_string buf "\t"; 
    Buffer.add_string buf s; 
    Buffer.add_string buf "\n" 
  in
  List.iter (fun i -> out @@ instr i) code
    
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
            env'', [Mov (M x, s)], s :: sstack
	| ST x ->
            let env' = env#local x in
            let s :: sstack' = sstack in
            env', [Mov (s, M x)], sstack' 
        | READ  ->
            env, [Call "lread"], [eax]
        | WRITE ->
            env, [Push eax; Call "lwrite"; Pop edx], [] 
        | _ ->

         let x::(y::_ as sstack') = sstack in
 	 let andop   = [Mov (y, edx); AndBin (y, edx);               (*compare y with self*)
                       Mov (L 0, edx); Setne dl;                    (*put result in edx*)
                       Mov (x, eax); AndBin (x, eax);               (*compare x with self*)
                       Mov (L 0, eax); Setne al;                    (*put result in eax*)
                       AndBin (eax, edx); Mov (L 0, edx); Setne dl; (*compare eax with edx and put result in edx*)
Mov (edx, y)] in 
		let short codearr = env, [Mov (y, edx)] @ codearr @ [Mov (edx, y)], sstack' in
		let shorteq setop = short ([Cmp(x, y); Mov (L 0, edx)] @ setop @ [Mov (edx, y)]) in
              (match i with 
	     (* | MUL -> fun (x, y) -> Mul (x, y) *)
		| MUL -> short [Mul(x,y)]
	        | ADD ->  short [Add (x, y)]
	        | DIV -> env, [Mov (y, eax); Cltd; Div x; Mov (eax, y)], sstack'
                | SUB -> short [Sub(x, edx)]
		| MOD -> env,  [Mov (y, eax); Cltd; Div x; Mov (edx, y)], sstack'
		  | OR -> short [OrBin(x, edx); Mov (L 0, edx); Setne dl]
           | AND -> env, andop, sstack'
           | EQUALS -> shorteq [Sete dl]   
		   | NOT_EQUALS -> shorteq [Setne dl]
		   | GREATER -> shorteq [Setg dl]
		   | LESS -> shorteq [Setl dl]
		   | GREATER_EQUALS -> shorteq [Setge dl]
		   | LESS_EQUALS -> shorteq [Setle dl]
		   )
      in
      let env, code', sstack'' = sint env prg' sstack' in
      env, code @ code', sstack''
	
let compile p = 
  let env, code, [] = sint (new env) (Compile.Program.compile p) [] in
  let buf   = Buffer.create 1024 in
  let out s = Buffer.add_string buf s in
  out "\t.data\n";
  List.iter (fun x -> out (Printf.sprintf "%s:\t.int 0\n" x)) 
    env#get_locals;
  out "\t.text\n";
  out "\t.globl\tmain\n";
  out "main:\n";
  out "\tpushl\t%ebp\n";
  out "\tmovl\t%esp,%ebp\n";
  out (Printf.sprintf "\tsubl\t$%d,%%esp\n" (env#get_depth * 4));
  to_string buf code;
  out "\tmovl\t%ebp,%esp\n";
  out "\tpopl\t%ebp\n";
  out "\tret\n";
  Buffer.contents buf
    
let build stmt name =
  let outf = open_out (Printf.sprintf "%s.s" name) in
  Printf.fprintf outf "%s" (compile stmt);
  close_out outf;
  let inc = try Sys.getenv "RC_RUNTIME" with _ -> "../runtime" in
  Sys.command (Printf.sprintf "gcc -m32 -o %s %s/runtime.o %s.s" name inc name)

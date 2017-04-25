open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string|  R_8 of int

let regs  = [|"%eax"; "%ebx"; "%ecx"; "%esi"; "%edi"; "%edx"; "%esp"; "%ebp"|]
let [|eax; ebx; ecx; esi; edi; edx; esp; ebp|] = Array.mapi (fun i _ -> R i) regs

let regs_8bit = [|"%al"|]
let [|al|] = Array.mapi (fun i _ -> R_8 i) regs_8bit

let nregs = Array.length regs - 3


type instr =

| Add  of opnd * opnd
| Mul  of opnd * opnd
| Div  of opnd * opnd
| Dis  of opnd * opnd
| Con  of opnd * opnd
| Mod  of opnd * opnd
| Sub  of opnd * opnd
| Equ  of opnd * opnd
| Ine  of opnd * opnd
| ELe  of opnd * opnd
| EGr  of opnd * opnd
| Les  of opnd * opnd
| Gre  of opnd * opnd
| And  of opnd * opnd
| Or   of opnd * opnd
| Mov  of opnd * opnd
| Push of opnd
| Pop  of opnd
| Call of string
| Set of string * opnd
| Ret

let to_string buf code =      
  let instr =
    let opnd = function
      | R i   -> regs.(i)
      | R_8 i -> regs_8bit.(i)
      | S i   -> Printf.sprintf "%d(%%ebp)" (-i * 4)
      | L i   -> Printf.sprintf "$%d" i
      | M s   -> s  

    in
    function
      | Add (x, y) -> Printf.sprintf "addl\t%s,%s"  (opnd x) (opnd y)
      | Mul (x, y) -> Printf.sprintf "imull\t%s,%s" (opnd x) (opnd y)
      | Sub (x,y)  -> Printf.sprintf "subl\t%s,%s" (opnd x) (opnd y)
      | Div (x,y)  -> Printf.sprintf "idiv\t%s,%s" (opnd x) (opnd y)
      | Dis (x,y)  -> Printf.sprintf "orl\t%s,%s" (opnd x) (opnd y)
      | Con (x,y)  -> Printf.sprintf "andl\t%s,%s" (opnd x) (opnd y)
      | Set (o,x)  -> Printf.sprintf "set%s\t%s"    o       (opnd x)
      | Equ (x, y) -> Printf.sprintf "cmpl\t%s,%s"  (opnd x) (opnd y)
      | Mov (x, y) -> Printf.sprintf "movl\t%s,%s"  (opnd x) (opnd y)
      | Push x     -> Printf.sprintf "pushl\t%s" (opnd x)
      | Pop  x     -> Printf.sprintf "popl\t%s"     (opnd x)
      | Call x     -> Printf.sprintf "call\t%s"      x
      | Ret        -> "ret" 
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
        | BINOP o ->
            let x::(y::_ as sstack') = sstack in
             let getCommand x y = (match o with 
        |"*"  ->  [Mul (x, y)]
        |"+"  ->  [Add (x, y)]
        |"-"  ->  [Sub (x, y)]
        |"/"  ->  [Div (x, y)]
        |"%"  ->  [Div(x,y); Mov(edx, eax)]
        |"||" ->  [Dis(x,y); Mov(y, eax)]
        |"&&" ->  [Con(x,y); Mov(y, eax)]
        |"==" ->  [Equ(x,y); Set("e",al)]
        |"!=" ->  [Equ(x,y); Set("le",al)]
        |"<=" ->  [Equ(x,y); Set("ge",al)]
        |">=" ->  [Equ(x,y); Set("ne",al)]
        |"<"  ->  [Equ(x,y); Set("g",al)]
        |">"  ->  [Equ(x,y); Set("n",al)]

              )  in
         match x, y with
          | S _, S _ -> env, [Mov (y, edx)] @ getCommand x edx @[Mov (edx, y)], sstack'
          | _        -> env, getCommand x y, sstack'  
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
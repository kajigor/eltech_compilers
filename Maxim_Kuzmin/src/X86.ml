open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string

let regs  = [|"%eax"; "%ebx"; "%ecx"; "%esi"; "%edi"; "%edx"; "%esp"; "%ebp"|]
let dl  = "%dl"

let nregs = Array.length regs - 3

let [|eax; ebx; ecx; esi; edi; edx; esp; ebp|] = Array.mapi (fun i _ -> R i) regs

type instr =
  | Add  of opnd * opnd
  | Mul  of opnd * opnd
  | Mov  of opnd * opnd
  | Push of opnd
  | Pop  of opnd
  | Call of string
  | Ret
  | OrBin of opnd * opnd
  | AndBin of opnd * opnd
  | Cmp of opnd * opnd
  | Setne of string
  | Sete of string

let to_string buf code =      
  let instr =
    let opnd = function
      | R i -> regs.(i)
      | S i -> Printf.sprintf "%d(%%ebp)" (-i * 4)
      | L i -> Printf.sprintf "$%d" i
      | M s -> s 
    in
    function
      | Add (x, y)    -> Printf.sprintf "addl\t%s,%s"  (opnd x) (opnd y)
      | Mul (x, y)    -> Printf.sprintf "imull\t%s,%s" (opnd x) (opnd y)
      | Mov (x, y)    -> Printf.sprintf "movl\t%s,%s"  (opnd x) (opnd y)
      | Push x        -> Printf.sprintf "pushl\t%s"    (opnd x)
      | Pop  x        -> Printf.sprintf "popl\t%s"     (opnd x)
      | Call x        -> Printf.sprintf "call\t%s"      x
      | Ret           -> "ret"
      | OrBin (x, y)  -> Printf.sprintf "orl\t%s,%s"   (opnd x) (opnd y)
      | AndBin (x, y) -> Printf.sprintf "andl\t%s,%s"  (opnd x) (opnd y)
      | Cmp (x, y)    -> Printf.sprintf "cmpl\t%s,%s"  (opnd x) (opnd y)
      | Setne x       -> Printf.sprintf "setne\t%s"    x
      | Sete x        -> Printf.sprintf "sete\t%s"     x
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
        env'', (
          match s with
          | S _ ->  [Mov (M x, edx); Mov (edx, s)]
          | _ ->    [Mov (M x, s)]
        ), s :: sstack

      | ST x ->
        let env' = env#local x in
        let s :: sstack' = sstack in
        env', (
          match s with
          | S _ ->  [Mov (s, edx); Mov (edx, M x)]
          | _ ->    [Mov (s, M x)]
        ), sstack'  

      | READ  ->
        env, [Call "lread"], [eax]

      | WRITE ->
        env, [Push eax; Call "lwrite"; Pop edx], [] 

      | _ ->
        let x::(y::_ as sstack') = sstack in
        let andcode = [Mov (y, edx); AndBin (y, edx); (*compare y with self*)
                       Mov (L 0, edx); Setne dl; Mov (edx, y); (*put result in y*)
                       Mov (x, edx); AndBin (x, edx); (*compare x with self*)
                       Mov (L 0, edx); Setne dl; (*put result in edx*)
                       AndBin (y, edx); Mov (L 0, edx); Setne dl; (*compare y with edx and put result in edx*)
                       Mov (edx, y)] (*put result to y*) in

          match x, y with
          | S _, S _ ->
            let short arr = env, [Mov (y, edx)] @ arr @ [Mov (edx, y)], sstack' in
            (match i with
            | MUL   -> short [Mul(x, edx)]
            | ADD   -> short [Add(x, edx)]
            | OR    -> short [OrBin(x, edx); Mov (L 0, edx); Setne dl]
            | AND   -> env, andcode, sstack'
            | EQUAL -> short [Cmp(x, edx); Mov (L 0, edx); Sete dl]
            )
          | _ ->
            let short codearr = env, codearr, sstack' in
            (match i with
            | MUL  -> short [Mul(x, y)]
            | ADD  -> short [Add(x, y)]
            | OR   -> short [OrBin(x, y); Mov (L 0, edx); Setne dl; Mov (edx, y)]
            | AND  -> env, andcode, sstack'
            | EQUAL -> short [Cmp(x, y); Mov (L 0, edx); Sete dl; Mov (edx, y)]
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
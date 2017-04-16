open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string
(* EAX, ECX, EDX *)
(* eax - return value of func *)
(* ecx - type of return of func *)
(* eax, ecx, edx - for free use *)
(* ESP, EBP *)
(* esp - stack pointer *)
(* ebp - for save stack frame *)
(* EBX, ESI, EDI *)
(* ebx - do not use so far *)
(* esi, edi - needs to be saved and restore *)
let regs  = [|"%eax"; "%ebx"; "%ecx"; "%esi"; "%edi"; "%edx"; "%esp"; "%ebp"|]
let nregs = Array.length regs - 3

let [|eax; ebx; ecx; esi; edi; edx; esp; ebp|] = Array.mapi (fun i _ -> R i) regs

type instr =
| Add  of opnd * opnd
| Sub  of opnd * opnd
| Mul  of opnd * opnd
| Div  of opnd * opnd
| Cltd
| Mov  of opnd * opnd
| Push of opnd
| Pop  of opnd
| Call of string
| Ret
| Or   of opnd * opnd
| And   of opnd * opnd
| Cmd  of opnd * opnd
| SetNE of string
| SetE of string
| SetL  of string
| SetG  of string
| SetLE of string
| SetGE of string

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
      | Sub (x, y)    -> Printf.sprintf "subl\t%s,%s"  (opnd x) (opnd y)
      | Mul (x, y) -> Printf.sprintf "imull\t%s,%s" (opnd x) (opnd y)
      | Div  x        -> Printf.sprintf "idiv\t%s"     (opnd x)
      | Cltd          -> "cltd"
      | Mov (x, y) -> Printf.sprintf "movl\t%s,%s"  (opnd x) (opnd y)
      | Push x     -> Printf.sprintf "pushl\t%s"    (opnd x)
      | Pop  x     -> Printf.sprintf "popl\t%s"     (opnd x)
      | Call x     -> Printf.sprintf "call\t%s"      x
      | Ret        -> "ret"
      | Or (x, y)  -> Printf.sprintf "orl\t%s,%s"   (opnd x) (opnd y)
      | And (x, y) -> Printf.sprintf "andl\t%s,%s"  (opnd x) (opnd y)
      | Cmp (x, y)    -> Printf.sprintf "cmpl\t%s,%s"  (opnd x) (opnd y)
      | SetNE x       -> Printf.sprintf "setne\t%s"    x
      | SetE x        -> Printf.sprintf "sete\t%s"     x
      | SetL x        -> Printf.sprintf "setl\t%s"     x
      | SetG x        -> Printf.sprintf "setg\t%s"     x
      | SetLE x       -> Printf.sprintf "setle\t%s"    x
      | SetGE x       -> Printf.sprintf "setge\t%s"    x
      
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
	match i withhttps://news.yandex.ru/
	| PUSH n ->  
            let env', s = env#allocate sstack in
            env', [Mov (L n, s)], s :: sstack
        | LD x ->
            let env'     = env#local x in
            let env'', s = env'#allocate sstack in
            env'', (match s with
                      | S _ -> [Mov (M x, edx); Mov (edx, s)]
                      | _   -> [Mov (M x, s)]
                  ), s :: sstack
	      | ST x ->
            let env' = env#local x in
            let s :: sstack' = sstack in
            env', 
                  (match s with 
                  | S _ -> [Mov (s, edx); Mov (edx, M x)]
                  | _   -> [Mov (s, M x)]
                  ), sstack' 
        | READ  ->
            env, [Call "lread"], [eax]
        | WRITE ->
            env, [Push eax; Call "lwrite"; Pop edx], [] 
        | _ ->
            let x::(y::_ as sstack') = sstack in
                    let andcode = [Mov (y, edx); And (y, edx);               (*compare y with self*)
                       Mov (L 0, edx); SetNE dl;                    (*put result in edx*)
                       Mov (x, eax); And (x, eax);               (*compare x with self*)
                       Mov (L 0, eax); SetNE al;                    (*put result in eax*)
                       And (eax, edx); Mov (L 0, edx); SetNE dl; (*compare eax with edx and put result in edx*)
                       Mov (edx, y)] in                             (*put result to y*)
            (fun op ->
              match x, y with
              | S _, S _ -> 
                let opn arr = env, [Mov (y, edx)] @ arr @ [Mov (edx, y)], sstack' in
                let logic set = opn [Cmp(x, edx); Mov (L 0, edx); set] in
                (match i with
                  | MUL         -> opn [Mul(x, edx)]
                  | DIV         -> env, [Mov (y, eax); Cltd; Div x; Mov (eax, y)], sstack'
                  | REM         -> env, [Mov (y, eax); Cltd; Div x; Mov (edx, y)], sstack'
                  | ADD         -> opn [Add(x, edx)]
                  | SUB         -> opn [Sub(x, edx)]
                  | OR          -> opn [Or(x, edx); Mov (L 0, edx); SetNE dl]
                  | AND         -> env, andcode, sstack'
                  | EQUAL       -> logic (SetE dl)
                  | NOTEQUAL    -> logic (SetNE dl)
                  | LESS        -> logic (SetL dl)
                  | MORE        -> logic (SetG dl)
                  | LESSEQUAL   -> logic (SetLE dl)
                  | MOREEQUAL   -> logic (SetGE dl)
                )
              | _        ->           (*if one or both operands in register*)
            let opn codearr = env, codearr, sstack' in
            let logic set = opn [Cmp(x, y); Mov (L 0, edx); set; Mov (edx, y)] in
            (match i with
            | MUL         -> opn [Mul(x, y)]
            | DIV         -> env, [Mov (y, eax); Cltd; Div x; Mov (eax, y)], sstack'
            | MOD         -> env, [Mov (y, eax); Cltd; Div x; Mov (edx, y)], sstack'
            | ADD         -> opn [Add(x, y)]
            | SUB         -> opn [Sub(x, y)]
            | OR          -> opn [Or(x, y); Mov (L 0, edx); SetNE dl; Mov (edx, y)]
            | AND         -> env, andcode, sstack'
            | EQUAL       -> logic (SetE dl)
            | NOTEQUAL    -> logic (SetNE dl)
            | LESS        -> logic (SetL dl)
            | MORE        -> logic (SetG dl)
            | LESSEQUAL   -> logic (SetLE dl)
            | MOREEQUAL   -> logic (SetGE dl)
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
    

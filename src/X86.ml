open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string

let regs  = [|"%eax"; "%ebx"; "%ecx"; "%edi"; "%esi"; "%edx"; "%esp"; "%ebp"|]
let nregs = Array.length regs - 3

let [|eax; ebx; ecx; edx; esi; edi; esp; ebp|] = Array.mapi (fun i _ -> R i) regs

(*иначе edx будет edi*)
let tmp = edi
let edi = edx
let edx = tmp

type instr =
| Add  of opnd * opnd
| Mul  of opnd * opnd
| Sub  of opnd * opnd
| Div  of opnd * opnd
| Mod  of opnd * opnd
| Mov  of opnd * opnd
| Cmp  of opnd * opnd
| Xor  of opnd * opnd
| Or   of opnd * opnd
| And  of opnd * opnd
| Push of opnd
| Pop  of opnd
| Cdq
| Setl
| Setle
| Setg
| Setge
| Sete
| Setne
| Movzbl
| Ret
| Call of string

let to_string buf code =      
  let instr =
    let opnd = function
      | R i -> regs.(i)
      | S i -> Printf.sprintf "%d(%%ebp)" (-i * 4)
      | L i -> Printf.sprintf "$%d" i
      | M s -> s  
    in
    function
      | Add (s1, s2) -> Printf.sprintf "\taddl\t%s,\t%s"  (opnd s1) (opnd s2)
      | Mul (s1, s2) -> Printf.sprintf "\timull\t%s,\t%s" (opnd s1) (opnd s2)
      | Sub (s1, s2) -> Printf.sprintf "\tsubl\t%s,\t%s"  (opnd s1) (opnd s2)
      | Div (s1, s2) -> Printf.sprintf "\tidivl\t%s"      (opnd s1)

      | Mov (s1, s2) -> Printf.sprintf "\tmovl\t%s,\t%s"  (opnd s1) (opnd s2)
      | Cmp (s1, s2) -> Printf.sprintf "\tcmp\t%s,\t%s"   (opnd s1) (opnd s2)
      | Push s       -> Printf.sprintf "\tpushl\t%s"      (opnd s )
      | Pop  s       -> Printf.sprintf "\tpopl\t%s"       (opnd s )
 
      | Xor (s1, s2) -> Printf.sprintf "\txorl\t%s,\t%s"  (opnd s1) (opnd s2)
      | Or  (s1, s2) -> Printf.sprintf "\torl\t%s,\t%s"   (opnd s1) (opnd s2)
      | And (s1, s2) -> Printf.sprintf "\tandl\t%s,\t%s"  (opnd s1) (opnd s2)

      | Setl         -> "\tsetl\t%al"
      | Setle        -> "\tsetle\t%al"
      | Setg         -> "\tsetg\t%al"
      | Setge        -> "\tsetge\t%al"
      | Sete         -> "\tsete\t%al"
      | Setne        -> "\tsetne\t%al"
    
                                          
      | Movzbl       -> "\tmovzbl\t%al,\t%eax" 
      | Cdq          -> "\tcdq"
      | Ret          -> "\tret"
      | Call p       -> Printf.sprintf "\tcall\t%s" p 
  in
  let out s = 
    Buffer.add_string buf "\t"; 
    Buffer.add_string buf s; 
    Buffer.add_string buf "\n" 
  in
  List.iter (fun i -> out @@ instr i) code
    
module S = Set.Make (String)

let save_regs f =
  [Push eax; Push ebx] @ f @ [Pop ebx; Pop eax] 

let to_eax_ebx x y f =
  save_regs @@ [Mov (x, eax); Mov (y, ebx)] @ (f eax ebx) @ [Mov (ebx, y)]
   

let compare x y cmp =
  [Cmp (x, y); cmp; Movzbl]

class env =
  object (this)
    val locals = S.empty
    val depth  = 0
	
    method allocate = function
      | []                          -> this, R 2
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
            env, [Push (R 2); Call "lwrite"; Pop (R 2)], [] 
        | BINOP op ->
            let x::(y::_ as sstack') = sstack in
            env, (match op with
                 | "+" ->
                    to_eax_ebx x y @@ fun x y -> [Add (x, y); Mov (y, eax)]
                 | "-" ->
                    to_eax_ebx x y @@ fun x y -> [Sub (x, y); Mov (y, eax)]
                 | "*" ->
                     save_regs [Mov (y, eax); Mul (x, eax); Mov (eax, y)]
                 | "/" ->
                    save_regs [Mov (y, eax); Cdq; Div (x, y); Mov (eax, y)]
                 | "%" ->
                    save_regs [Mov (y, eax); Cdq; Div (x, y); Mov (edx, y)]
                 | "<" ->
                    to_eax_ebx x y @@ fun x y -> compare x y Setl
                 | "<=" ->
                    to_eax_ebx x y @@ fun x y -> compare x y Setle
                 | ">" ->
                    to_eax_ebx x y @@ fun x y -> compare x y Setg
                 | ">=" ->
                    to_eax_ebx x y @@ fun x y -> compare x y Setge
                 | "==" ->
                    to_eax_ebx x y @@ fun x y -> compare x y Sete
                 | "!=" ->
                    to_eax_ebx x y @@ fun x y -> compare x y Setne
                 | "&&" ->
                    save_regs [
                                    (* Set eax value to null, mov x to edx, check that edx is not null
                                       if it is true - in eax we now have not null 
                                    *)
                                    Xor (eax, eax);
                                    Mov (x, ebx);
                                    Cmp (ebx, eax);
                                    Setne;
                                    (* Mov y to edx and mul eax and edx (result in edx)
                                       result of && is not null only if eax not null (x != 0) and edx not null (y != 0) *)
                                    Mov (y, ebx);
                                    Mul (eax, ebx);
                                    Xor (eax, eax);
                                    Cmp (ebx, eax);
                                    Setne;
                                    Mov (eax, y)]
                 | "!!" ->
                    save_regs [
                                    (* Set eax value to null, mov x to edx, check that or y, edx not null*)
                                    Xor (eax, eax);
                                    Mov (x, ebx);
                                    Or (y, ebx);
                                    Cmp (ebx, eax);
                                    Setne;
                                    Mov (eax, y)]
              ), sstack'
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

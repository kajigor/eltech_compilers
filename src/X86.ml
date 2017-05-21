open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string

let regs  = [|"%eax"; "%ebx"; "%ecx"; "%esi"; "%edi"; "%edx"; "%esp"; "%ebp"|]
let nregs = Array.length regs - 3

let [|eax; ebx; ecx; esi; edi; edx; esp; ebp|] = Array.mapi (fun i _ -> R i) regs

type instr =
| Add  of opnd * opnd
| Mul  of opnd * opnd
| Sub  of opnd * opnd
| Div  of opnd * opnd
| Mod  of opnd * opnd
| Cmp  of opnd * opnd
| Setl
| Setle
| Setg
| Setge
| Sete
| Setne
| Xor of opnd * opnd
| And of opnd * opnd
| Or of opnd * opnd
| Lbl of string
| Jnz of string
| Jz of string
| Jmp of string
| Mov  of opnd * opnd
| Push of opnd
| Pop  of opnd
| Call of string
| Movzbl
| Cdq
| Ret

let to_string buf code =
  let instr =
    let opnd = function
      | R i -> regs.(i)
      | S i -> Printf.sprintf "%d(%%ebp)" (-i * 4)
      | L i -> Printf.sprintf "$%d" i
      | M s -> s
    in
    function
      | Add (x, y) -> Printf.sprintf "addl\t%s,\t%s"  (opnd x) (opnd y)
      | Sub (x, y) -> Printf.sprintf "subl\t%s,\t%s"  (opnd x) (opnd y)
      | Mul (x, y) -> Printf.sprintf "imull\t%s,\t%s" (opnd x) (opnd y)
      | Div (x, y) -> Printf.sprintf "idivl\t%s"      (opnd x)

      | Cmp (x, y) -> Printf.sprintf "cmp\t%s,\t%s"   (opnd x) (opnd y)
      | Setl       -> "setl\t%al"
      | Setle      -> "setle\t%al"
      | Setg       -> "setg\t%al"
      | Setge      -> "setge\t%al"
      | Sete       -> "sete\t%al"
      | Setne      -> "setne\t%al"

      | Xor (x, y) -> Printf.sprintf "xorl\t%s,\t%s"  (opnd x) (opnd y)
      | Or  (x, y) -> Printf.sprintf "orl\t%s,\t%s"   (opnd x) (opnd y)
      | And (x, y) -> Printf.sprintf "andl\t%s,\t%s"  (opnd x) (opnd y)

      | Lbl l      -> Printf.sprintf "%s:"            l
      | Jnz l      -> Printf.sprintf "jnz\t%s"        l
      | Jz  l      -> Printf.sprintf "jz\t%s"         l
      | Jmp l      -> Printf.sprintf "jmp\t%s"        l

      | Mov (x, y) -> Printf.sprintf "movl\t%s,\t%s"  (opnd x) (opnd y)
      | Push x     -> Printf.sprintf "pushl\t%s"      (opnd x)
      | Pop  x     -> Printf.sprintf "popl\t%s"       (opnd x)
      | Call x     -> Printf.sprintf "call\t%s"       x

      | Movzbl     -> "movzbl\t%al,\t%edx"
      | Cdq        -> "cdq"

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
      | []                          -> this, R 1
      | R i :: _ when i < nregs - 1 -> this, R (i+1)
      | S i :: _                    -> {< depth = max depth (i+1) >}, S (i+1)
      | _                           -> {< depth = max depth 1 >}, S 1

    method local     x = {< locals = S.add x locals >}
    method get_locals  = S.elements locals
    method get_depth   = depth
  end

let comparator x y cmp =
  [Cmp (x, y); cmp; Movzbl]

let rec sint env prg sstack =
  match prg with
  | []        -> env, [], []
  | i :: prg' ->
      let env, code, sstack' =
	match i with
	| PUSH n ->
             let env', s = env#allocate sstack in
             env', [Mov (L n, s)], s :: sstack
  | LD x   ->
             let env'     = env#local x in
             let env'', s = env'#allocate sstack in
             env'', [Mov (M x, edx); Mov (edx, s)], s :: sstack
	| ST x   ->
             let env' = env#local x in
             let s :: sstack' = sstack in
             env', [Mov (s, edx); Mov (edx, M x)], sstack'
  | READ   ->
             env, [Call "lread"], [eax]
  | WRITE  ->
             env, [Push (R 1); Call "lwrite"; Pop (R 1)], []
  | LBL l  ->
             env, [Lbl l], sstack
  | JNZ l  ->
             let s :: sstack' = sstack in
             env, [Cmp (L 0, s); Jnz l], sstack'
  | JZ  l  ->
             let s :: sstack' = sstack in
             env, [Cmp (L 0, s); Jz l], sstack'
  | JMP l  ->
             env, [Jmp l], sstack
  | _ ->
            let x::(y::_ as sstack') = sstack in
            (fun op ->
              env, [Mov (y, edx)] @ op x edx @ [ Mov (edx, y)], sstack'
            )
            (match i with
	          | ADD -> fun x y -> [Add (x, y)]
            | MUL -> fun x y -> [Mul (x, y)]
            | SUB -> fun x y -> [Sub (x, y)]
	          | DIV -> fun x y -> [Mov (y, eax); Cdq; Div (x, y); Mov (eax, edx)]
            | MOD -> fun x y -> [Mov (y, eax); Cdq; Div (x, y);]
            | LT  -> fun x y -> comparator x y Setl
            | LE  -> fun x y -> comparator x y Setle
            | GT  -> fun x y -> comparator x y Setg
            | GE  -> fun x y -> comparator x y Setge
            | EQ  -> fun x y -> comparator x y Sete
            | NEQ -> fun x y -> comparator x y Setne
            | AND -> fun x y -> [Xor (eax, eax); Cmp (y, eax); Setne; Mov (x, edx); Mul (eax, edx); Xor(eax, eax); Cmp(edx, eax); Setne; Mov (eax, y)]
            | OR  -> fun x y -> [Xor (eax, eax); Or (x, y); Cmp (y, eax); Setne; Mov (eax, y)]
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
  out "\txorl\t%eax,%eax\n";
  out "\tret\n";
  Buffer.contents buf

let build stmt name =
  let outf = open_out (Printf.sprintf "%s.s" name) in
  Printf.fprintf outf "%s" (compile stmt);
  close_out outf;
  let inc = try Sys.getenv "RC_RUNTIME" with _ -> "../runtime" in
  Sys.command (Printf.sprintf "gcc -m32 -o %s %s/runtime.o %s.s" name inc name)

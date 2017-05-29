open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string

let regs  = [|"%ebx"; "%ecx"; "%esi"; "%edi"; "%eax"; "%edx"; "%esp"; "%ebp"|]

let [|al; dl|] = [|"%al"; "%dl"|]

let nregs = Array.length regs - 4

let [|ebx; ecx; esi; edi; eax; edx; esp; ebp|] = Array.mapi (fun i _ -> R i) regs

type instr =
  | Add  of opnd * opnd
  | Sub  of opnd * opnd
  | Mul  of opnd * opnd
  | Div  of opnd
  | Cltd
  | Mov  of opnd * opnd
  | Push of opnd
  | Pop  of opnd
  | Call of string
  | Ret
  | OrBin   of opnd * opnd
  | AndBin  of opnd * opnd
  | Cmp     of opnd * opnd
  | Setne   of string
  | Sete    of string
  | Setl    of string
  | Setg    of string
  | Setle   of string
  | Setge   of string
  | Lbl     of string
  | Jz      of string
  | Jnz     of string
  | Jmp     of string
  | Test    of opnd * opnd

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
      | Sub (x, y)    -> Printf.sprintf "subl\t%s,%s"  (opnd x) (opnd y)
      | Mul (x, y)    -> Printf.sprintf "imull\t%s,%s" (opnd x) (opnd y)
      | Div  x        -> Printf.sprintf "idiv\t%s"     (opnd x)
      | Cltd          -> "cltd"
      | Mov (x, y)    -> Printf.sprintf "movl\t%s,%s"  (opnd x) (opnd y)
      | Push x        -> Printf.sprintf "pushl\t%s"    (opnd x)
      | Pop  x        -> Printf.sprintf "popl\t%s"     (opnd x)
      | Call x        -> Printf.sprintf "call\t%s"     x
      | Ret           -> "ret"
      | OrBin (x, y)  -> Printf.sprintf "orl\t%s,%s"   (opnd x) (opnd y)
      | AndBin (x, y) -> Printf.sprintf "andl\t%s,%s"  (opnd x) (opnd y)
      | Cmp (x, y)    -> Printf.sprintf "cmpl\t%s,%s"  (opnd x) (opnd y)
      | Setne x       -> Printf.sprintf "setne\t%s"    x
      | Sete x        -> Printf.sprintf "sete\t%s"     x
      | Setl x        -> Printf.sprintf "setl\t%s"     x
      | Setg x        -> Printf.sprintf "setg\t%s"     x
      | Setle x       -> Printf.sprintf "setle\t%s"    x
      | Setge x       -> Printf.sprintf "setge\t%s"    x
      | Lbl x         -> Printf.sprintf "%s:"          x
      | Jz x          -> Printf.sprintf "jz\t\t%s"  x
      | Jnz x         -> Printf.sprintf "jnz\t\t%s" x
      | Jmp x         -> Printf.sprintf "jmp\t\t%s" x
      | Test (x, y)   -> Printf.sprintf "testl\t%s,%s" (opnd x) (opnd y)
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
        (match s with
        | S _ ->  env'', [Mov (M x, edx); Mov (edx, s)], s :: sstack
        | _   ->  env'', [Mov (M x, s)], s :: sstack)

      | ST x ->
        let env' = env#local x in
        let s :: sstack' = sstack in
        (match s with
        | S _ ->  env', [Mov (s, edx); Mov (edx, M x)], sstack'
        | _   ->  env', [Mov (s, M x)], sstack')

      | READ  -> env, [Call "lread"], [eax]
      | WRITE -> env, [Push ebx; Call "lwrite"; Pop edx], []
      | LBL x -> if (String.compare x "main" == 0) then 
                    env, [Lbl x; Push ebp; Mov (esp, ebp); Sub (L (env#get_depth * 4), esp)], []
                 else env, [Lbl x], []
      | JMP x -> env, [Jmp x], []

      | CJMP (x,c) -> 
        let s :: sstack' = sstack in
        let jmpop = (match c with "z"  -> Jz x | "nz" -> Jnz x) in
        (match s with
        | S _ ->  env, [Mov (s, edx); Test (edx, edx); jmpop], []
        | _   ->  env, [Test (s, s); jmpop], [])

      | CALL x -> env, [], sstack
      | RET    -> env, [], sstack
      | END    -> env, [Mov (ebp, esp); Pop ebp; Ret], sstack

      | _ ->
        let x::(y::_ as sstack') = sstack in
        let andop   = [Mov (y, edx); AndBin (y, edx);               (*compare y with self*)
                       Mov (L 0, edx); Setne dl;                    (*put result in edx*)
                       Mov (x, eax); AndBin (x, eax);               (*compare x with self*)
                       Mov (L 0, eax); Setne al;                    (*put result in eax*)
                       AndBin (eax, edx); Mov (L 0, edx); Setne dl; (*compare eax with edx and put result in edx*)
                       Mov (edx, y)] in                             (*put result in y*)

          match x, y with
          | S _, S _ ->    (*if both operands in stack - need to move one in register*)
            let short codearr = env, [Mov (y, edx)] @ codearr @ [Mov (edx, y)], sstack' in
            let shortcmp set = short ([Cmp(x, edx); Mov (L 0, edx)] @ set) in
            (match i with
            | MUL         -> short [Mul(x, edx)]
            | DIV         -> env, [Mov (y, eax); Cltd; Div x; Mov (eax, y)], sstack'
            | REM         -> env, [Mov (y, eax); Cltd; Div x; Mov (edx, y)], sstack'
            | ADD         -> short [Add(x, edx)]
            | SUB         -> short [Sub(x, edx)]
            | OR          -> short [OrBin(x, edx); Mov (L 0, edx); Setne dl]
            | AND         -> env, andop, sstack'
            | EQUAL       -> shortcmp [Sete dl]
            | NOTEQUAL    -> shortcmp [Setne dl]
            | LESS        -> shortcmp [Setl dl]
            | GREATER     -> shortcmp [Setg dl]
            | LESSEQUAL   -> shortcmp [Setle dl]
            | GREATEREQUAL-> shortcmp [Setge dl]
            )
          | _ ->           (*if one or both operands in register*)
            let short codearr = env, codearr, sstack' in
            let shortcmp setop = short ([Cmp(x, y); Mov (L 0, edx)] @ setop @ [Mov (edx, y)]) in
            (match i with
            | MUL         -> short [Mul(x, y)]
            | DIV         -> env, [Mov (y, eax); Cltd; Div x; Mov (eax, y)], sstack'
            | REM         -> env, [Mov (y, eax); Cltd; Div x; Mov (edx, y)], sstack'
            | ADD         -> short [Add(x, y)]
            | SUB         -> short [Sub(x, y)]
            | OR          -> short [OrBin(x, y); Mov (L 0, edx); Setne dl; Mov (edx, y)]
            | AND         -> env, andop, sstack'
            | EQUAL       -> shortcmp [Sete dl]
            | NOTEQUAL    -> shortcmp [Setne dl]
            | LESS        -> shortcmp [Setl dl]
            | GREATER     -> shortcmp [Setg dl]
            | LESSEQUAL   -> shortcmp [Setle dl]
            | GREATEREQUAL-> shortcmp [Setge dl]
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
  (*out "main:\n";
  out "\tpushl\t%ebp\n";
  out "\tmovl\t%esp,%ebp\n";
  out (Printf.sprintf "\tsubl\t$%d,%%esp\n" (env#get_depth * 4));*)
  to_string buf code;
  (*out "\tmovl\t%ebp,%esp\n";
  out "\tpopl\t%ebp\n";
  out "\tret\n";*)
  Buffer.contents buf

  let build stmt name =
  let outf = open_out (Printf.sprintf "%s.s" name) in
  Printf.fprintf outf "%s" (compile stmt);
  close_out outf;
  let inc = try Sys.getenv "RC_RUNTIME" with _ -> "../runtime" in
  Sys.command (Printf.sprintf "gcc -m32 -o %s %s/runtime.o %s.s" name inc name)
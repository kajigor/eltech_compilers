open StackMachine
open Instr

type opnd = R of int | S of int | L of int | M of string

let regs  = [|"%ebx"; "%ecx"; "%esi"; "%edi"; "%eax"; "%edx"; "%esp"; "%ebp"|]

let [|al; dl|] = [|"%al"; "%dl"|]

let nregs = Array.length regs - 4

let [|ebx; ecx; esi; edi; eax; edx; esp; ebp|] = Array.mapi (fun i _ -> R i) regs

type instr =
  | X86Add  of opnd * opnd
  | X86Sub  of opnd * opnd
  | X86Mul  of opnd * opnd
  | X86Div  of opnd
  | X86Cltd
  | X86Mov  of opnd * opnd
  | X86Push of opnd
  | X86Pop  of opnd
  | X86Call of string
  | X86Ret
  | X86OrBin   of opnd * opnd
  | X86AndBin  of opnd * opnd
  | X86Cmp     of opnd * opnd
  | X86Setne   of string
  | X86Sete    of string
  | X86Setl    of string
  | X86Setg    of string
  | X86Setle   of string
  | X86Setge   of string
  | X86Lbl     of int
  | X86Jz      of int
  | X86Jnz     of int
  | X86Jmp     of int
  | X86Test of opnd * opnd

let to_string buf code =      
  let instr =
    let opnd = function
      | R i -> regs.(i)
      | S i -> Printf.sprintf "%d(%%ebp)" (-i * 4)
      | L i -> Printf.sprintf "$%d" i
      | M s -> s 
    in
    function
      | X86Add (x, y)    -> Printf.sprintf "addl\t%s,%s"  (opnd x) (opnd y)
      | X86Sub (x, y)    -> Printf.sprintf "subl\t%s,%s"  (opnd x) (opnd y)
      | X86Mul (x, y)    -> Printf.sprintf "imull\t%s,%s" (opnd x) (opnd y)
      | X86Div  x        -> Printf.sprintf "idiv\t%s"     (opnd x)
      | X86Cltd          -> "cltd"
      | X86Mov (x, y)    -> Printf.sprintf "movl\t%s,%s"  (opnd x) (opnd y)
      | X86Push x        -> Printf.sprintf "pushl\t%s"    (opnd x)
      | X86Pop  x        -> Printf.sprintf "popl\t%s"     (opnd x)
      | X86Call x        -> Printf.sprintf "call\t%s"      x
      | X86Ret           -> "ret"
      | X86OrBin (x, y)  -> Printf.sprintf "orl\t%s,%s"   (opnd x) (opnd y)
      | X86AndBin (x, y) -> Printf.sprintf "andl\t%s,%s"  (opnd x) (opnd y)
      | X86Cmp (x, y)    -> Printf.sprintf "cmpl\t%s,%s"  (opnd x) (opnd y)
      | X86Setne x       -> Printf.sprintf "setne\t%s"    x
      | X86Sete x        -> Printf.sprintf "sete\t%s"     x
      | X86Setl x        -> Printf.sprintf "setl\t%s"     x
      | X86Setg x        -> Printf.sprintf "setg\t%s"     x
      | X86Setle x       -> Printf.sprintf "setle\t%s"    x
      | X86Setge x       -> Printf.sprintf "setge\t%s"    x
      | X86Lbl x         -> Printf.sprintf "lbl%d:"       x
      | X86Jz x          -> Printf.sprintf "jz\t\tlbl%d"    x
      | X86Jnz x         -> Printf.sprintf "jnz\t\tlbl%d"   x
      | X86Jmp x         -> Printf.sprintf "jmp\t\tlbl%d"   x
      | X86Test (x, y) -> Printf.sprintf "testl\t%s,%s" (opnd x) (opnd y)
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

      | S_PUSH n ->
        let env', s = env#allocate sstack in
        env', [X86Mov (L n, s)], s :: sstack

      | S_LD x ->
        let env'     = env#local x in
        let env'', s = env'#allocate sstack in
        (match s with
        | S _ ->  env'', [X86Mov (M x, edx); X86Mov (edx, s)], s :: sstack
        | _ -> env'', [X86Mov (M x, s)], s :: sstack)

      | S_ST x ->
        let env' = env#local x in
        let s :: sstack' = sstack in
        (match s with
        | S _ ->  env', [X86Mov (s, edx); X86Mov (edx, M x)], sstack'
        | _ -> env', [X86Mov (s, M x)], sstack')

      | S_READ  ->
        env, [X86Call "lread"], [eax]

      | S_WRITE ->
        env, [X86Push ebx; X86Call "lwrite"; X86Pop edx], []
      | S_LBL x -> env, [X86Lbl x], []
      | S_JMP x -> env, [X86Jmp x], []

      | S_CJMP (x,c) -> 
        let s :: sstack' = sstack in
        let jmpop = (match c with "z"  -> X86Jz x | "nz" -> X86Jnz x) in
        (match s with
        | S _ ->  env, [X86Mov (s, edx); X86Test (edx, edx); jmpop], []
        | _ -> env, [X86Test (s, s); jmpop], [])
      | _ ->
        let x::(y::_ as sstack') = sstack in
        let andcode = [X86Mov (y, edx); X86AndBin (y, edx);               (*compare y with self*)
                       X86Mov (L 0, edx); X86Setne dl;                    (*put result in edx*)
                       X86Mov (x, eax); X86AndBin (x, eax);               (*compare x with self*)
                       X86Mov (L 0, eax); X86Setne al;                    (*put result in eax*)
                       X86AndBin (eax, edx); X86Mov (L 0, edx); X86Setne dl; (*compare eax with edx and put result in edx*)
                       X86Mov (edx, y)] in                             (*put result to y*)

          match x, y with
          | S _, S _ ->    (*if both operands in stack - need to move one in register*)
            let short arr = env, [X86Mov (y, edx)] @ arr @ [X86Mov (edx, y)], sstack' in
            let shorteq set = short ([X86Cmp(x, edx); X86Mov (L 0, edx)] @ set) in
            (match i with
            | S_MUL         -> short [X86Mul(x, edx)]
            | S_DIV         -> env, [X86Mov (y, eax); X86Cltd; X86Div x; X86Mov (eax, y)], sstack'
            | S_REM         -> env, [X86Mov (y, eax); X86Cltd; X86Div x; X86Mov (edx, y)], sstack'
            | S_ADD         -> short [X86Add(x, edx)]
            | S_SUB         -> short [X86Sub(x, edx)]
            | S_OR          -> short [X86OrBin(x, edx); X86Mov (L 0, edx); X86Setne dl]
            | S_AND         -> env, andcode, sstack'
            | S_EQUAL       -> shorteq [X86Sete dl]
            | S_NOTEQUAL    -> shorteq [X86Setne dl]
            | S_LESS        -> shorteq [X86Setl dl]
            | S_GREATER     -> shorteq [X86Setg dl]
            | S_LESSEQUAL   -> shorteq [X86Setle dl]
            | S_GREATEREQUAL-> shorteq [X86Setge dl]
            )
          | _ ->           (*if one or both operands in register*)
            let short codearr = env, codearr, sstack' in
            let shorteq setop = short ([X86Cmp(x, y); X86Mov (L 0, edx)] @ setop @ [X86Mov (edx, y)]) in
            (match i with
            | S_MUL         -> short [X86Mul(x, y)]
            | S_DIV         -> env, [X86Mov (y, eax); X86Cltd; X86Div x; X86Mov (eax, y)], sstack'
            | S_REM         -> env, [X86Mov (y, eax); X86Cltd; X86Div x; X86Mov (edx, y)], sstack'
            | S_ADD         -> short [X86Add(x, y)]
            | S_SUB         -> short [X86Sub(x, y)]
            | S_OR          -> short [X86OrBin(x, y); X86Mov (L 0, edx); X86Setne dl; X86Mov (edx, y)]
            | S_AND         -> env, andcode, sstack'
            | S_EQUAL       -> shorteq [X86Sete dl]
            | S_NOTEQUAL    -> shorteq [X86Setne dl]
            | S_LESS        -> shorteq [X86Setl dl]
            | S_GREATER     -> shorteq [X86Setg dl]
            | S_LESSEQUAL   -> shorteq [X86Setle dl]
            | S_GREATEREQUAL-> shorteq [X86Setge dl]
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
(* Stack Machine *)
module Instr =
  struct

    type t =
      | S_READ
      | S_WRITE
      | S_PUSH of int
      | S_LD   of string
      | S_ST   of string
      | S_ADD  
      | S_SUB
      | S_MUL
      | S_DIV
      | S_REM
      | S_OR
      | S_AND
      | S_EQUAL
      | S_NOTEQUAL
      | S_LESS
      | S_GREATER
      | S_LESSEQUAL
      | S_GREATEREQUAL
      | S_LBL   of int
      | S_JMP   of int
      | S_CJMP  of int * string
      | S_CALL  of string
      | S_END
      | S_FUN   of string * (string list)
      | S_RET
      | S_ELEM
      | S_STA

  end



module Program =
  struct

    type t = Instr.t list

  end



module Interpret =
  struct

    open Instr
    open Interpret.Stmt

  (*recursively find label in program and 
  return tail of list of statements after label*)
  let rec findlbl prg lbl =
    let h :: prg' = prg in
    if h = lbl then prg' 
    else findlbl prg' lbl 


  let run prg input =
    let prg_full = prg in (*full original program for labels search*)
    let rec run' ((prg, stack, st, input, output) as conf) =
      match prg with
      | []        -> conf
      | i :: prg' ->
        run' (
          match i with
          | S_READ       -> let z :: input' = input in
                          (prg', z :: stack, st, input', output)
          | S_WRITE      -> let h :: stack' = stack in 
                          (prg', stack', st, input, output @ [h])
          | S_PUSH n     -> (prg', n :: stack, st, input, output)
          | S_LD   x     -> (prg', st x :: stack, st, input, output)
          | S_ST   x     -> let h :: stack' = stack in
                          (prg', stack', update st x h, input, output)
          | S_LBL  m     -> (prg', stack, st, input, output)
          | S_JMP  m     -> (findlbl prg_full (S_LBL m), stack, st, input, output)
          | S_CJMP (m,c) -> let h :: stack' = stack in
                          if (match c with 
                            | "z"  -> (h = 0) 
                            | "nz" -> (h != 0)) 
                          then (findlbl prg_full (S_LBL m), stack', st, input, output)
                          else (prg', stack', st, input, output)
          | _ -> 
            let y :: x :: stack'' = stack in
            (prg', (match i with 
              | S_ADD           -> ( + ) 
              | S_SUB           -> ( - )
              | S_MUL           -> ( * )
              | S_DIV           -> ( / )
              | S_REM           -> ( mod )
              | S_OR            -> (fun a b -> if (a == 0) && (b == 0) then 0 else 1)
              | S_AND           -> (fun a b -> if (a == 0) || (b == 0) then 0 else 1)
              | S_EQUAL         -> (fun a b -> if (a == b) then 1 else 0)
              | S_NOTEQUAL      -> (fun a b -> if (a != b) then 1 else 0)
              | S_LESS          -> (fun a b -> if (a < b) then 1 else 0)
              | S_GREATER       -> (fun a b -> if (a > b) then 1 else 0)
              | S_LESSEQUAL     -> (fun a b -> if (a <= b) then 1 else 0)
              | S_GREATEREQUAL  -> (fun a b -> if (a >= b) then 1 else 0)
            ) x y :: stack'', st, input, output)
        )
  in

  let (_, _, _, _, output) = 
    run' (prg, [], (fun _ -> failwith "undefined variable"), input, []) in

  output

  end

module Compile =
  struct

  open Instr


  module Expr =
    struct

    open Language.Expr

    let rec compile =
    let short op (x,y) = (compile x) @ (compile y) @ [op] in
    function
    | Var x               -> [S_LD   x]
    | Const n             -> [S_PUSH n]
    | Add (x, y)          -> short S_ADD (x,y)
    | Sub (x, y)          -> short S_SUB (x,y)
    | Mul (x, y)          -> short S_MUL (x,y)
    | Div (x, y)          -> short S_DIV (x,y)
    | Rem (x, y)          -> short S_REM (x,y)
    | Or (x, y)           -> short S_OR (x,y)
    | And (x, y)          -> short S_AND (x,y)
    | Equal (x, y)        -> short S_EQUAL (x,y)
    | NotEqual (x, y)     -> short S_NOTEQUAL (x,y)
    | Less (x, y)         -> short S_LESS (x,y)
    | Greater (x, y)      -> short S_GREATER (x,y)
    | LessEqual (x, y)    -> short S_LESSEQUAL (x,y)
    | GreaterEqual (x, y) -> short S_GREATEREQUAL (x,y)

    end
  

  class lblcounter =
    object (this)
      val mutable count  = 0
      method add_lbls n  = count <- (count + n)
      method get_count   = count
    end

  module Stmt =
    struct

    open Language.Stmt

    let rec compile lblc = function
    | Skip                  -> []
    | Assign (x, e)         -> Expr.compile e @ [S_ST x]
    | Read    x             -> [S_READ; S_ST x]
    | Write   e             -> Expr.compile e @ [S_WRITE]
    | Seq    (l, r)         -> compile lblc l @ compile lblc r
    | op ->
      lblc#add_lbls 2;
      let lbl1   = lblc#get_count-1 in
      let lbl2   = lblc#get_count in
      match op with
      | If (exp, seq1, seq2) ->
          Expr.compile exp @
          [S_CJMP (lbl1,"z")] @
          compile lblc seq1 @
          [S_JMP lbl2] @
          [S_LBL lbl1] @
          compile lblc seq2 @
          [S_LBL lbl2]

      | While (exp, seq)     ->
          [S_JMP lbl1] @
          [S_LBL lbl2] @
          compile lblc seq @
          [S_LBL lbl1] @
          Expr.compile exp @
          [S_CJMP (lbl2, "nz")]
    end


  module Program =
    struct

    let compile = Stmt.compile (new lblcounter)

    end

end


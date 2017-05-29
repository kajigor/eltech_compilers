(* Stack Machine *)
module Instr =
  struct

    type t =
      | READ
      | WRITE
      | PUSH of int
      | LD   of string
      | ST   of string
      | ADD  
      | SUB
      | MUL
      | DIV
      | REM
      | OR
      | AND
      | EQUAL
      | NOTEQUAL
      | LESS
      | GREATER
      | LESSEQUAL
      | GREATEREQUAL
      | LBL  of string
      | CJMP of string * string
      | JMP  of string 
      | CALL of string
      | RET
      | END

  end



module Program =
  struct

    type t = Instr.t list

  end



module Interpret =
  struct

  open Instr
  open Interpret.Stmt

  (*store new value of variable*)
  let update st x v = fun y -> if y = x then v else st y

  (*recursively find label in program and 
  return tail of list of statements after label*)
  let rec findlbl prg lbl =
    let h :: prg' = prg in
    if h = lbl then prg' 
    else findlbl prg' lbl 

  let novars = (fun _ -> failwith "undefined variable")


  let run prg_full input =
    (*next stmt, vars, input, output*)
    let rec run' ((prg, stack, st, input, output) as conf) =
      match prg with
      | []        -> conf
      | i :: prg' ->
        run' (
          match i with
          | READ       -> let z :: input' = input in
                          (prg', z :: stack, st, input', output)
          | WRITE      -> let h :: stack' = stack in 
                          (prg', stack', st, input, output @ [h])
          | PUSH n     -> (prg', n :: stack, st, input, output)
          | LD   x     -> (prg', st x :: stack, st, input, output)
          | ST   x     -> let h :: stack' = stack in
                          (prg', stack', update st x h, input, output)
          | LBL  m     -> (prg', stack, st, input, output)
          | JMP  m     -> (findlbl prg_full (LBL m), stack, st, input, output)
          
          | CJMP (m,c) -> let h :: stack' = stack in
                          if (match c with 
                            | "z"  -> (h = 0) 
                            | "nz" -> (h != 0)) 
                          then (findlbl prg_full (LBL m), stack', st, input, output)
                          else (prg', stack', st, input, output)
          
          | CALL name  -> let (_, stack', _, input', output') =   (*recursively eval function*)
                            run' (findlbl prg_full (LBL name), stack, novars, input, output) in 
                          (prg', stack', st, input', output')  (*use returned stack, input, output*)

          | RET        -> ([], stack, novars, input, output)
          | END        -> ([], stack, st, input, output)
          | _ -> 
            let y :: x :: stack'' = stack in
            (prg', (match i with 
              | ADD           -> ( + ) 
              | SUB           -> ( - )
              | MUL           -> ( * )
              | DIV           -> ( / )
              | REM           -> ( mod )
              | OR            -> (fun a b -> if (a == 0) && (b == 0) then 0 else 1)
              | AND           -> (fun a b -> if (a == 0) || (b == 0) then 0 else 1)
              | EQUAL         -> (fun a b -> if (a == b) then 1 else 0)
              | NOTEQUAL      -> (fun a b -> if (a != b) then 1 else 0)
              | LESS          -> (fun a b -> if (a < b) then 1 else 0)
              | GREATER       -> (fun a b -> if (a > b) then 1 else 0)
              | LESSEQUAL     -> (fun a b -> if (a <= b) then 1 else 0)
              | GREATEREQUAL  -> (fun a b -> if (a >= b) then 1 else 0)
            ) x y :: stack'', st, input, output)
        )
  in

  let (_, _, _, _, output) = 
    run' (findlbl prg_full (LBL "main"), [], novars, input, []) in

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
    | Var x               -> [LD   x]
    | Const n             -> [PUSH n]
    | Add (x, y)          -> short ADD (x,y)
    | Sub (x, y)          -> short SUB (x,y)
    | Mul (x, y)          -> short MUL (x,y)
    | Div (x, y)          -> short DIV (x,y)
    | Rem (x, y)          -> short REM (x,y)
    | Or (x, y)           -> short OR (x,y)
    | And (x, y)          -> short AND (x,y)
    | Equal (x, y)        -> short EQUAL (x,y)
    | NotEqual (x, y)     -> short NOTEQUAL (x,y)
    | Less (x, y)         -> short LESS (x,y)
    | Greater (x, y)      -> short GREATER (x,y)
    | LessEqual (x, y)    -> short LESSEQUAL (x,y)
    | GreaterEqual (x, y) -> short GREATEREQUAL (x,y)

    | FCall (name, args)  -> 
        (*compile args from last to first; results of evaluation will be stored in stack*)
        (List.fold_left (fun code arg -> code @ (compile arg)) [] (List.rev args)) @
        [CALL name]

    end

  (*сlass for label counting; labels named as lbl0, lbl1, lbl2...*)
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
    | Assign (x, e)         -> Expr.compile e @ [ST x]
    | Read    x             -> [READ; ST x]
    | Write   e             -> Expr.compile e @ [WRITE]
    | Seq    (l, r)         -> compile lblc l @ compile lblc r

    | FCall (name, args)    -> 
        (List.fold_left (fun code arg -> code @ (Expr.compile arg)) [] (List.rev args)) @
        [CALL name]

    | Return e              -> Expr.compile e @ [RET]

    | op ->
      lblc#add_lbls 2;
      let lbl1   = "_lbl" ^ (string_of_int (lblc#get_count-1)) in
      let lbl2   = "_lbl" ^ (string_of_int (lblc#get_count)) in
      match op with
      | If (exp, seq1, seq2) ->
          Expr.compile exp @
          [CJMP (lbl1,"z")] @
          compile lblc seq1 @
          [JMP lbl2] @
          [LBL lbl1] @
          compile lblc seq2 @
          [LBL lbl2]

      | While (exp, seq)     ->
          [JMP lbl1] @
          [LBL lbl2] @
          compile lblc seq @
          [LBL lbl1] @
          Expr.compile exp @
          [CJMP (lbl2, "nz")]
          
      | Until (seq, exp)     ->
          [LBL lbl1] @
          compile lblc seq @
          Expr.compile exp @
          [CJMP (lbl1, "z")]
    end


  module Func = 
    struct

    let compile lblc (name, args, body) =

      [LBL name] @
      (List.map (fun arg -> ST arg) args) @ (*pop params from stack and save in variables*)
      (Stmt.compile lblc body)
 
    end


  module Program =
    struct

    let compile (fdefs, main) = 
      let lblc = new lblcounter in

        (List.fold_left (fun code fdef -> code @ (Func.compile lblc fdef)) [] fdefs) @
        [LBL "main"] @
        (Stmt.compile lblc main) @
        [END]

    end

end
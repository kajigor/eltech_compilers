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
      | MORE
      | LESSEQUAL
      | MOREEQUAL

  end



module Program =
  struct

    type t = Instr.t list

  end



module Interpret =
  struct

    open Instr
    open Interpret.Stmt

  let run prg input =
    let rec run' prg ((stack, st, input, output) as conf) =
    match prg with
    | []        -> conf
    | i :: prg' ->
      run' prg' (
        match i with
        | READ  -> let z :: input' = input in
          (z :: stack, st, input', output)
        | WRITE -> let z :: stack' = stack in
          (stack', st, input, output @ [z])
        | PUSH n -> (n :: stack, st, input, output)
        | LD   x -> (st x :: stack, st, input, output)
        | ST   x -> let z :: stack' = stack in
          (stack', update st x z, input, output)
        | _ -> let y :: x :: stack' = stack in
          ((match i with 
            | ADD       -> ( + ) 
            | SUB       -> ( - )
            | MUL       -> ( * )
            | DIV       -> ( / )
            | REM       -> ( mod )
            | OR        -> (fun a b -> if (a == 0) && (b == 0) then 0 else 1)
            | AND       -> (fun a b -> if (a == 0) || (b == 0) then 0 else 1)
            | EQUAL     -> (fun a b -> if (a == b) then 1 else 0)
            | NOTEQUAL  -> (fun a b -> if (a != b) then 1 else 0)
            | LESS      -> (fun a b -> if (a < b) then 1 else 0)
            | MORE      -> (fun a b -> if (a > b) then 1 else 0)
            | LESSEQUAL -> (fun a b -> if (a <= b) then 1 else 0)
            | MOREEQUAL -> (fun a b -> if (a >= b) then 1 else 0)
          ) 
          x y :: stack', st, input, output)
      )
  in

  let (_, _, _, output) = 
    run' prg ([], (fun _ -> failwith "undefined variable"), input, []) in

  output

  end



module Compile =
  struct

  open Instr


  module Expr =
    struct

    open Language.Expr

    let rec compile = 
    let twoargs op x y = (compile x) @ (compile y) @ [op] in
    function 
    | Var x             -> [LD   x]
    | Const n           -> [PUSH n]
    | Add (x, y)        -> twoargs ADD x y
    | Sub (x, y)        -> twoargs SUB x y
    | Mul (x, y)        -> twoargs MUL x y
    | Div (x, y)        -> twoargs DIV x y
    | Rem (x, y)        -> twoargs REM x y
    | Or (x, y)         -> twoargs OR x y
    | And (x, y)        -> twoargs AND x y
    | Equal (x, y)      -> twoargs EQUAL x y
    | NotEqual (x, y)   -> twoargs NOTEQUAL x y
    | Less (x, y)       -> twoargs LESS x y
    | More (x, y)       -> twoargs MORE x y
    | LessEqual (x, y)  -> twoargs LESSEQUAL x y
    | MoreEqual (x, y)  -> twoargs MOREEQUAL x y

    end


  module Stmt =
    struct

    open Language.Stmt

    let rec compile = function
    | Skip          -> []
    | Assign (x, e) -> Expr.compile e @ [ST x]
    | Read    x     -> [READ; ST x]
    | Write   e     -> Expr.compile e @ [WRITE]
    | Seq    (l, r) -> compile l @ compile r

    end


  module Program =
    struct

    let compile = Stmt.compile

    end

end


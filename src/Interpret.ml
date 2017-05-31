open Language

(* Interpreter for expressions *)
module Expr =
  struct

    open Expr

    let rec eval expr st = 
      let eval' e = eval e st in
      match expr with
      | Var   x             -> st x
      | Const z             -> z
      | Binop ("+", x, y)   -> eval' x + eval' y
      | Binop ("-", x, y)   -> eval' x - eval' y
      | Binop ("*", x, y)   -> eval' x * eval' y
      | Binop ("/", x, y)   -> eval' x / eval' y
      | Binop ("%", x, y)   -> (eval' x) mod (eval' y)
      | Binop ("<", x, y)   -> if (eval' x) < (eval' y) then 1 else 0
      | Binop ("<=", x, y)  -> if (eval' x) <= (eval' y) then 1 else 0
      | Binop (">", x, y)   -> if (eval' x) > (eval' y) then 1 else 0
      | Binop (">=", x, y)  -> if (eval' x) >= (eval' y) then 1 else 0
      | Binop ("==", x, y)  -> if (eval' x) == (eval' y) then 1 else 0
      | Binop ("!=", x, y)  -> if (eval' x) <> (eval' y) then 1 else 0
      | Binop ("&&", x, y)  -> if ((eval' x) <> 0) && ((eval' y) <> 0) then 1 else 0
      | Binop ("!!", x, y)  -> if ((eval' x) <> 0) || ((eval' y) <> 0) then 1 else 0

  end

(* Interpreter for statements *)
module Stmt =
  struct

    open Stmt

    (* State update primitive *) 
    let update st x v = fun y -> if y = x then v else st y 
      
    let rec eval stmt ((st, input, output) as conf) =
      match stmt with
      | Skip           -> conf
      | Assign (x, e)  -> (update st x (Expr.eval e st), input, output)
      | Read    x      ->
        let z :: input' = input in
        (update st x z, input', output)
      | Write   e      -> (st, input, output @ [Expr.eval e st])
      | If (e, s1, s2) -> if (Expr.eval e st) <> 0 then (eval s1 conf)
                                                   else (eval s2 conf)
      | While (e, s)   -> if (Expr.eval e st) <> 0 then eval stmt (eval s conf)
                                                   else conf  
      | Seq (s1, s2)   -> eval s1 conf |> eval s2

  end

module Program =
  struct

    let eval p input = 
      let (_, _, output) = 
	Stmt.eval p ((fun _ -> failwith "undefined variable"), input, []) 
      in
      output

  end

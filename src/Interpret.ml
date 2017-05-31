open Language

module Expr =
  struct
    open Expr
    open Language.BinOp

    let rec eval expr st = 
      let eval' e = eval e st in
      match expr with
      | Var   x     -> st x
      
      | Const z     -> z
      
      | Binop  (op, x, y) -> (apply op) (eval' x) (eval' y)
  end

module Stmt =
  struct
    open Stmt

    let update st x v = fun y -> if y = x then v else st y 
      
    let rec eval stmt ((st, input, output) as conf) =
      match stmt with
      | Skip          -> conf

      | Assign (x, e) -> (update st x (Expr.eval e st), input, output)

      | Read    x     -> let z :: input' = input in (update st x z, input', output)
      
      | Write   e     -> (st, input, output @ [Expr.eval e st])
      
      | Seq (s1, s2)  -> eval s1 conf |> eval s2 
      
      | If (e, s1, s2) -> if (Expr.eval e st) <> 0 then (eval s1 conf) else (eval s2 conf)
      
      | While (e, s)   -> if (Expr.eval e st) <> 0 then (eval stmt (eval s conf)) else conf
  end

module Program =
  struct
    let eval p input = 
      let (_, _, output) = Stmt.eval p ((fun _ -> failwith "undefined variable"), input, []) 
      in output
  end
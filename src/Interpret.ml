open Language

(* Interpreter for expressions *)
module Expr =
  struct

    open Expr

    let rec eval expr st = 
      let eval' e = eval e st in
      match expr with
      | Var   x     -> st x
      | Const z     -> z
      | Add  (x, y) 	    -> eval' x + eval' y
      | Sub  (x, y) 	    -> eval' x - eval' y
      | Mul  (x, y) 	    -> eval' x * eval' y
      | Div  (x, y) 	    -> eval' x / eval' y
      | Divd  (x, y) 	    -> eval' x mod eval' y
      | Or (x, y)   	    -> if ((eval' x) == 0) && ((eval' y) == 0) then 0 else 1
      | And (x, y)  	    -> if ((eval' x) == 0) || ((eval' y) == 0) then 0 else 1
      | Equal (x, y)        -> if (eval' x) == (eval' y) then 1 else 0
      | NotEqual (x, y)     -> if (eval' x) != (eval' y) then 1 else 0
      | Less (x, y)         -> if (eval' x) < (eval' y) then 1 else 0
      | Greater (x, y)      -> if (eval' x) > (eval' y) then 1 else 0
      | LessEqual (x, y)    -> if (eval' x) <= (eval' y) then 1 else 0
      | GreaterEqual (x, y) -> if (eval' x) >= (eval' y) then 1 else 0
  end

(* Interpreter for statements *)
module Stmt =
  struct

    open Stmt

    (* State update primitive *) 
    let update st x v = fun y -> if y = x then v else st y 
      
    let rec eval stmt ((st, input, output) as conf) =
      match stmt with
      | Skip          -> conf
      | Assign (x, e) -> (update st x (Expr.eval e st), input, output)
      | Read    x     -> 
	  let z :: input' = input in 
          (update st x z, input', output)
      | Write   e     -> (st, input, output @ [Expr.eval e st])
      | Seq (s1, s2)  -> eval s1 conf |> eval s2 
      | If  (exp, pt1, pt2) -> 
          if (Expr.eval exp st) != 0 
          then eval pt1 conf 
          else eval pt2 conf
      | While (exp, pt)      -> 
          (*recursive loop function*)
          let rec loop exp' pt' ((st', _, _) as conf') = 
            if (Expr.eval exp' st') != 0 
            then loop exp' pt' (eval pt' conf') 
            else conf' 
          in
          loop exp pt conf
      | Until (pt, exp)      ->
          (*recursive loop function*)
          let rec loop exp' pt' conf' = 
            let (newst, _, _) as newconf = eval pt' conf' in
            if (Expr.eval exp' newst) == 0
            then loop exp' pt' newconf
            else newconf
          in
          loop exp pt conf

  end

module Program =
  struct

    let eval p input = 
      let (_, _, output) = 
	Stmt.eval p ((fun _ -> failwith "undefined variable"), input, []) 
      in
      output

  end

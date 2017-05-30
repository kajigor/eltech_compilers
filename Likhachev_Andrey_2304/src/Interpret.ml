open Language

(* Interpreter for expressions *)
module Expr =
  struct

    open Expr

    let rec eval expr st = 
      let eval' e = eval e st in
      match expr with
		| Var   x       -> st x
		| Const z       -> z
		| Bin (f, x, y) -> (operation_to_func f) (eval' x) (eval' y) 						 
  end

(* Interpreter for statements *)
module Stmt =
  struct

    open Stmt

    (* State update primitive *) 
    let update st x v = fun y -> if y = x then v else st y 
	
    let rec eval stmt ((st, input, output) as conf) =
      match stmt with
      | Skip          		-> conf
      | Assign  (x, e) 		-> (update st x (Expr.eval e st), input, output)
      | Read     x          -> let z :: input' = input in
							   (update st x z, input', output)
      | Write    e          -> (st, input, output @ [Expr.eval e st])
      | Seq     (s1, s2)    -> eval s1 conf |> eval s2 
	  | IfElse  (e, s1, s2) -> if (Expr.eval e st) == 1 then eval s1 conf else eval s2 conf
	  | WhileDo (e, s)      -> if (Expr.eval e st) == 1 then eval s conf |> eval stmt else conf
	  | RepeatUntil (s,e)   -> eval s conf |> eval (WhileDo(Bin("==",e,Const 0),s))
  end

module Program =
  struct

    let eval p input = 
      let (_, _, output) = 
	Stmt.eval p ((fun _ -> failwith "undefined variable"), input, []) 
      in
      output

  end

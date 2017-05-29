open Language

(* Interpreter for expressions *)
module Expr =
  struct

    open Expr


   let match_operation op = match op with 
	| "+"  ->  fun x y -> x + y
	| "-"  ->  fun x y -> x - y
	| "*"  ->  fun x y -> x * y			
	| "/"  ->  fun x y -> x / y	
	| "%"  ->  fun x y -> x mod y
	| "==" ->  fun x y -> if x = y  then 1 else 0
	| "!=" ->  fun x y -> if x != y then 1 else 0
	| ">"  ->  fun x y -> if x > y  then 1 else 0
	| "<"  ->  fun x y -> if x < y  then 1 else 0
	| ">=" ->  fun x y -> if x >= y then 1 else 0
	| "<=" ->  fun x y -> if x <= y then 1 else 0
	| "&&" ->  fun x y -> if (x = 0 || y = 0) then 0 else 1
	| "!!" ->  fun x y -> if (x = 0 && y = 0) then 0 else 1

    let rec eval expr st = 
      let eval' e = eval e st in
      match expr with
      | Var   x             -> st x
      | Const z             -> z
      | BinOp  (op, x, y)   -> (match_operation op)(eval' x)(eval' y)

  end


(* Interpreter for statements *)
module Stmt =
  struct

    open Stmt

    (* State update primitive *)
    let update st x v = fun y -> if y = x then v else st y

    let rec eval stmt ((st, input, output) as conf) =
      match stmt with
      | Skip                  -> conf
      | Assign (x, e)         -> (update st x (Expr.eval e st), input, output)
      | Read    x             ->
          let z :: input' = input in (* :: берет верхний элемента списка входных данных *)
          (update st x z, input', output)
      | Write   e             -> (st, input, output @ [Expr.eval e st])
      | Seq (s1, s2)          -> eval s1 conf |> eval s2 (*вычисляется s1 и conf передается в s2 *)
      | If  (exp, seq1, seq2) -> 
          if (Expr.eval exp st) != 0 
          then eval seq1 conf 
          else eval seq2 conf
      | While (exp, seq)      -> 
          (*recursive loop function*)
          let rec loop exp' seq' ((st', _, _) as conf') = 
            if (Expr.eval exp' st') != 0 
            then loop exp' seq' (eval seq' conf') 
            else conf' 
          in
          loop exp seq conf
      | Repeat (seq, exp)      ->
          (*recursive loop function*)
          let rec loop exp' seq' conf' = 
            let (newst, _, _) as newconf = eval seq' conf' in
            if (Expr.eval exp' newst) == 0
            then loop exp' seq' newconf
            else newconf
          in
          loop exp seq conf

  end

module Program =
  struct

    let eval p input = 
      let (_, _, output) = 
        Stmt.eval p ((fun _ -> failwith "undefined variable"), input, []) 
      in
      output

  end

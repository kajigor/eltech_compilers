(* AST for expressions *)
open Ostap.Util
module Expr =
  struct

    type t =
    | Var   	     of string
    | Const 	     of int
    | Binop   	     of string * t * t

(*

  X Y Z  возвращает кортеж 
  X*     возвращает список
  ("1" "2") *
  x:"1" {int_of_string (Token.repr x)}
  x:("0" | "1" | "2")+ {List.fold_left (fun n d -> n * 10 + int_of_string n) 0 x}

  let rec fold_left f acc list =
    match list with
    | []   -> acc
    | h::t -> fold_left f (f acc h) t

    Свертка списка
    fold_right ( * ) [x1; x2; x3; x4; ...; xk] y =  x1 * ... * (xk-1 * (xk * y)) ...)
    fold_left ( * ) y [x1; x2; x3; x4; ...; xk] = def =
    (..((((y * x1) * x2) * x3) * x4) ... xk)
*)

    
       ostap (
       	 parse: expr0;
       	 expr0: h:expr1 t:(-"!!" expr1)* {
       	  List.fold_left(fun e op ->Binop( "!!" , e, op)) h t};

       	 expr1: h:expr2 t:(-"&&" expr2)* {
       	  List.fold_left(fun e op ->Binop( "&&" , e, op)) h t};

    	 	 expr2: h:expr3 t:(("==" | "!=" | "<=" | "<" | ">=" | ">") expr3)* {
           	 List.fold_left (fun e (op, y) -> Binop(Ostap.Matcher.Token.repr op, e, y)) h t};

       	 expr3: h:expr4 t:(("+" | "-") expr4)* {
       	  List.fold_left (fun e (op, y) -> Binop(Ostap.Matcher.Token.repr op, e, y)) h t};

    	 	 expr4: h:prim t:(("*" | "/" | "%") prim)* {
           	  List.fold_left (fun e (op, y) -> Binop(Ostap.Matcher.Token.repr op, e, y)) h t};


         prim:
           n:DECIMAL                 {Const n}  
           | e:IDENT                 {Var e}
           | -"(" parse -")") 
 
   end

(* AST statements/commands *)
module Stmt =
  struct

    type t =
    | Skip
    | Assign of string * Expr.t
    | Read   of string
    | Write  of Expr.t
    | Seq    of t * t

    let expr = Expr.parse

    ostap (
      simp: x:IDENT ":=" e:expr  {Assign (x, e)}
      | %"read"  "(" x:IDENT ")" {Read x}
      | %"write" "(" e:expr  ")" {Write e}
      | %"skip"                  {Skip};
      
      parse: s:simp ";" d:parse {Seq (s,d)} | simp 
    )

  end

module Program =
  struct

    type t = Stmt.t

    let parse = Stmt.parse

  end


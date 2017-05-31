open Ostap.Util

(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var             of string
    | Const           of int
    | Add             of t * t
    | Mul             of t * t 
    | Sub             of t * t 
	| Div             of t * t 
	| Mod             of t * t 
	| And             of t * t 
	| Or              of t * t 
    | Equals          of t * t 
	| NotEquals       of t * t 
    | Greater         of t * t 
    | Less            of t * t 
    | GreaterEquals   of t * t 
    | LessEquals      of t * t 


    
    let rec parser_ s = 
 	expr id
	[|     
		`Nona ,  [ostap ("||"), (fun x y -> Or (x, y))];  
		`Nona ,  [ostap ("&&"), (fun x y -> And (x, y))]; 
		`Nona ,  [ostap ("=="), (fun x y -> Equals (x, y)); 
		          ostap ("!="), (fun x y -> NotEquals (x, y));
			  ostap (">"),  (fun x y -> Greater (x, y));
		          ostap ("<"),  (fun x y -> Less (x, y));
		          ostap (">="), (fun x y -> GreaterEquals (x, y));
		          ostap ("<="), (fun x y -> LessEquals (x, y));];

		`Lefta , [ostap ("+"),  (fun x y -> Add (x, y));
		          ostap ("-"),  (fun x y -> Sub (x, y))]; 

		`Lefta , [ostap ("*"),  (fun x y -> Mul (x, y));
		          ostap ("/"),  (fun x y -> Div (x, y));
		          ostap ("%"),  (fun x y -> Mod (x, y))]
      |]               
      primary  s                                             
      and 
      ostap (
        primary:
          n:DECIMAL                 {Const n}  
          | e:IDENT                 {Var e}
          | -"(" parser_ -")") 


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

    let expr_parser = Expr.parser_

    ostap (
      simp: x:IDENT ":=" e:expr_parser  {Assign (x, e)}
      | %"read"  "(" x:IDENT ")" {Read x}
      | %"write" "(" e:expr_parser  ")" {Write e}
      | %"skip"                  {Skip};
      
      parse: s:simp ";" d:parse {Seq (s,d)} | simp 
    )

  end

module Program =
  struct

    type t = Stmt.t

    let parse = Stmt.parse

  end


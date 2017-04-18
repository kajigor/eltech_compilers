(* AST for expressions *)
open Ostap.Util
module Expr =
  struct

    type t =
    | Var   	     of string
    | Const 	     of int
    | Add   	     of t * t
    | Mul    	     of t * t  (**)
    | Disjunction  of t * t
    | Conjunction  of t * t
    | Equal 	     of t * t
    | Inequality   of t * t
    | Less 	   	   of t * t
    | Greater 	   of t * t
    | LessEqual    of t * t
    | GreaterEqual of t * t
    | Subtraction  of t * t
    | Division	   of t * t
    | Dividend     of t * t



  let rec parse s =                                                                                          
       expr id
 	    [|     
         `Nona ,  [ostap ("||"), (fun x y -> Disjunction (x, y)); 
                   ostap ("&&"), (fun x y -> Conjunction (x, y));];  
                     
        
         
         `Nona ,  [ostap ("=="), (fun x y -> Equal (x, y)); 
                   ostap ("!="), (fun x y -> Inequality (x, y));
                   ostap ("<="), (fun x y -> LessEqual (x, y));
                   ostap (">="), (fun x y -> GreaterEqual (x, y));
                   ostap ("<"), (fun x y -> Less (x, y));
                   ostap (">"), (fun x y -> Greater (x, y))];
 
         `Lefta , [ostap ("+"), (fun x y -> Add (x, y));
                   ostap ("-"), (fun x y -> Subtraction (x, y))]; 
 
         `Lefta , [ostap ("*"), (fun x y -> Mul (x, y));
                   ostap ("/"), (fun x y -> Division (x, y));
                   ostap ("%"), (fun x y -> Dividend (x, y))]
       |]                                                                                                  
       expr' s                                                                                                   
       and 
       ostap (
         expr':
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


open Ostap.Util

(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var   of string
    | Const of int
    | Add   of t * t
    | Mul   of t * t 
    | Or    of t * t
    | And   of t * t
    | Equal of t * t

    let rec expr_parser s =                                                                                    
      expr id
      [|     
        `Lefta , [ostap ("||"), (fun x y -> Or (x, y))];    
        `Lefta , [ostap ("&&"), (fun x y -> And (x, y))]; 
        `Lefta , [ostap ("=="), (fun x y -> Equal (x, y))];                                                                                  
        `Lefta , [ostap ("+"), (fun x y -> Add (x, y))]; 
        `Lefta , [ostap ("*"), (fun x y -> Mul (x, y))]
      |]                                                                                            
      expr' s                                                                                             
      and 
      ostap (
        expr':
          n:DECIMAL                 {Const n}  
          | e:IDENT                 {Var e}
          | -"(" expr_parser -")") 

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

    let expr_parser = Expr.expr_parser

    ostap (
      simp: 
        x:IDENT ":=" e:expr_parser        {Assign (x, e)}
        | %"read" "(" x:IDENT ")"         {Read x}
        | %"write" "(" e:expr_parser ")"  {Write e}
        | %"skip"                         {Skip};
          
      parse: 
        s:simp ";" d:parse                {Seq (s,d)}
        | simp 
    )

  end

module Program =
  struct

    type t = Stmt.t

    let parse = Stmt.parse

  end


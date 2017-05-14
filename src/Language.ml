open Ostap.Util

(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var   of string
    | Const of int
    | Add   of t * t
    | Mul   of t * t
    | Or	  of t * t
    | And	  of t * t
    | Eql	  of t * t
    | NEql	of t * t
    | LEql	of t * t
    | MEql	of t * t
    | Less	of t * t
    | More	of t * t
    | Sub	  of t * t
    | Div	  of t * t
    | Mod	  of t * t


    let rec parse s =
        expr id
        [|
            `Nona, [ostap ("!!"), (fun x y -> Or(x, y))];
            
            `Nona, [ostap ("&&"), (fun x y -> And(x, y))];
            
            `Nona, [ostap ("=="), (fun x y -> Eql(x, y));
                    ostap ("!="), (fun x y -> NEql(x, y));
                    ostap ("<="), (fun x y -> LEql(x, y));
                    ostap (">="), (fun x y -> MEql(x, y));
                    ostap ("<"), (fun x y -> Less(x, y));
                    ostap (">"), (fun x y -> More(x, y))];
            
            `Lefta, [ostap ("+"), (fun x y -> Add(x, y));
                     ostap ("-"), (fun x y -> Sub(x, y))];
                    
            `Lefta, [ostap ("*"), (fun x y -> Mul(x, y));
                     ostap ("/"), (fun x y -> Div(x, y));
                     ostap ("%"), (fun x y -> Mod(x, y))]
        |]
        expr' s
        and
        ostap(

            expr':
                n:DECIMAL   {Const n}
                | e:IDENT   {Var e}
                | -"(" parse -")"
        )                   
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
      simp: x:IDENT ":=" e:expr  				{Assign (x, e)}
      | %"read"  "(" x:IDENT ")" 				{Read x}
      | %"write" "(" e:expr  ")" 				{Write e}
      | %"skip"                  				{Skip};
	  
      parse: 
	     s:simp ";" d:parse 	{Seq (s,d)} | simp 
    )

  end

  
module Program =
  struct

    type t = Stmt.t

    let parse = Stmt.parse

  end


(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var   of string
    | Const of int
    | Add   of t * t
    | Sub   of t * t   
    | Mul   of t * t
    | Div   of t * t
    | Mod   of t * t
    | Or    of t * t
    | And   of t * t
    | Equal of t * t
    | NotEqual of t * t
    | Less of t * t
    | More of t * t
    | MoreEqual of t * t
    | LessEqual of t * t

    ostap (
      parse: x:mull "+" y:parse {Add (x,y)} | mull;
      parse: x:mull "-" y:parse {Sub (x,y)} | mull;
      mull : x:prim "*" y:mull  {Mul (x,y)} | prim;
      parse: x:mull "/" y:parse {Div (x,y)} | mull;
      parse: x:mull "%" y:parse {Mod (x,y)} | mull; 
      parse: x:mull "||" y:parse {Or (x,y)} | mull;
      parse: x:mull "&&" y:parse {And (x,y)} | mull;
      parse: x:mull "==" y:parse {Equal (x,y)} | mull;
      parse: x:mull "!=" y:parse {NotEqual (x,y)} | mull;
      parse: x:mull "<" y:parse {Less (x,y)} | mull;
      parse: x:mull ">" y:parse {More (x,y)} | mull;
      parse: x:mull ">=" y:parse {MoreEqual (x,y)} | mull;
      parse: x:mull "<=" y:parse {LessEqual (x,y)} | mull;
      
      prim : 
        n:DECIMAL       {Const n}  
      | e:IDENT         {Var e}
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


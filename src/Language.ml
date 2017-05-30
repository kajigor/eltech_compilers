(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var   of string
    | Const of int
    | Add   of t * t
    | Mul   of t * t 

    ostap (
      parse: x:mull "+" y:parse {Add (x,y)} | mull;
      mull : x:prim "*" y:mull  {Mul (x,y)} | prim; 
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
    | If     of Expr.t * t * t
    | While  of Expr.t * t
    | Repeat of t * Expr.t

    let expr = Expr.parse

    ostap (
      simp: x:IDENT ":=" e:expr  {Assign (x, e)}
      | %"read"  "(" x:IDENT ")" {Read x}
      | %"write" "(" e:expr  ")" {Write e}
      | %"skip"                  {Skip}
      | %"if"        e:!(Expr.parse)
        %"then"      s1:!(parse)
        %"else"      s2:!(parse)
        %"fi"                            {If (e, s1, s2)}
      | %"if"        e:!(Expr.parse)
        %"then"      s1:!(parse)
        %"fi"                            {If (e, s1, Skip)}
      | %"while"     e:!(Expr.parse)
        %"do"        s:!(parse)
        %"od"                            {While (e, s)}
      | %"repeat"    s:!(parse)
        %"until"     e:!(Expr.parse)     {Seq (s, While (Binop ("==", e, Const 0), s))}
      | %"for"       i:!(parse) "," n:!(Expr.parse) "," b:!(parse)
        %"do"        a:!(parse)
        %"od"                            {Seq (i, (While (n, Seq (a, b))))};
      parse: s:simp ";" d:parse {Seq (s,d)} | simp 
    )

  end

module Program =
  struct

    type t = Stmt.t

    let parse = Stmt.parse

  end


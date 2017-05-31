(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var   of string
    | Const of int
    | Binop of string * t * t

ostap(
  parse: expr0;
  expr0: h:expr1 t:(-"!!" expr1)*{
    List.fold_left(fun e op ->Binop("!!", e, op)) h t};
  expr1: h:expr2 t:(-"&&" expr2)*{
    List.fold_left(fun e op ->Binop("&&", e, op)) h t};
  expr2: h:expr3 t:(("==" | "!=" | "<=" | "<" | ">=" | ">")expr3)?{
    match t with
    | None -> h
    | Some (op, y) -> Binop(Ostap.Matcher.Token.repr op, h, y)
  };
  expr3: h:expr4 t:(("+" | "-") expr4)*{
    List.fold_left(fun e (op, y) -> Binop(Ostap.Matcher.Token.repr op, e, y)) h t};
  expr4: h: prim t:(("*" | "/" | "%") prim)*{
    List.fold_left(fun e (op, y) -> Binop(Ostap.Matcher.Token.repr op, e, y)) h t};
  prim:
    n:DECIMAL       {Const n}
    | e:IDENT         {Var e}
    | -"(" parse -")"
  )
  end

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

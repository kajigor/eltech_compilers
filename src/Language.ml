(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var   of string
    | Const of int
    | Binop of string * t * t

    ostap(
      parse: h:e1
      t:
        (-"!!" e1)
        *
        {
          List.fold_left
          (
            fun e op ->
              Binop("!!", e, op)
          ) h t
        };

      e1: h:e2
      t:
        (-"&&" e2)
        *
        {
          List.fold_left
          (
            fun e op ->
              Binop("&&", e, op)
          ) h t
        };

      e2: h:e3
      t:(("==" | "!=" | "<=" | "<" | ">=" | ">") e3)?
      {
        match t with
        | None -> h
        | Some (op, y) -> Binop(Ostap.Matcher.Token.repr op, h, y)
      };

      e3: h:e4
      t:
        (("+" | "-") e4)
        *
        {
          List.fold_left
          (fun e (op, y) ->
            Binop(Ostap.Matcher.Token.repr op, e, y)
          ) h t
        };

      e4: h:e0
      t:
        (("*" | "/" | "%") e0)
        *
        {
          List.fold_left
          (
            fun e (op, y) -> Binop(Ostap.Matcher.Token.repr op, e, y)
          ) h t
        };

      e0:
        n:DECIMAL         {Const n}
        | e:IDENT         {Var   e}
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

open Ostap 
open Matcher

module Expr =
  struct
    type t =
    | Var   of string
    | Const of int
    | Binop of string * t * t

    ostap (
      parse:
        orins;

      orins:
        l:andins suf:(("!!") andins)* {
           List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | andins;

      andins:
        l:cmp suf:(("&&") cmp)* {
           List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | cmp;

      cmp:
        l:add suf:(("<=" | "<" | ">=" | ">" | "==" | "!=") add)* {
           List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | add;
      
      add:
        l:mull suf:(("+" | "-") mull)* {
          List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | mull;

      mull:
        l:prim suf:(("*" | "/" | "%") prim)* {
           List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | prim;

      prim:
        n:DECIMAL {Const n}
      | x:IDENT   {Var   x}
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
    | If     of Expr.t * t * t
    | While  of Expr.t * t

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


module BinOp = 
    struct
      let apply op =
        match op with
        | "+"  -> fun x y -> x + y
        | "*"  -> fun x y -> x * y
        | "-"  -> fun x y -> x - y
        | "/"  -> fun x y -> x / y
        | "%"  -> fun x y -> x mod y
        | "<"  -> fun x y -> if x < y then 1 else 0
        | "<=" -> fun x y -> if x <= y then 1 else 0
        | ">"  -> fun x y -> if x > y then 1 else 0
        | ">=" -> fun x y -> if x >= y then 1 else 0
        | "==" -> fun x y -> if x = y then 1 else 0
        | "!=" -> fun x y -> if x <> y then 1 else 0
        | "&&" -> fun x y -> if (x <> 0) && (y <> 0) then 1 else 0
        | "!!" -> fun x y -> if (x <> 0) || (y <> 0) then 1 else 0
  end

module Program =
  struct
    type t = Stmt.t
    let parse = Stmt.parse
  end

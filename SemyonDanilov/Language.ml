open GT

(* AST for expressions *)
module Expr =
  struct

    @type t =
    | Var   of string
    | Const of int
    | Add   of t * t
    | Mul   of t * t with show

  end

(* AST statements/commands *)
module Stmt =
  struct

    @type t =
    | Skip
    | Assign of string * Expr.t
    | Read   of string
    | Write  of Expr.t
    | Seq    of t * t with show

  end

module Program =
  struct

    type t = Stmt.t

  end


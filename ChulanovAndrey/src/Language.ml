open Ostap.Util

(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var   	of string
    | Const 	of int
    | Add   	of t * t
    | Mul   	of t * t 
    | Sub   	of t * t
    | Div   	of t * t
    | Rem   	of t * t
    | Or    	of t * t
    | And       of t * t
    | Equal     of t * t
    | NotEqual  of t * t
    | Less      of t * t
    | More      of t * t
    | LessEqual of t * t
    | MoreEqual of t * t

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
    | Until  of t * Expr.t

  end

module Program =
  struct

    type t = Stmt.t

  end


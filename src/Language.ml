open Ostap
open Matcher
(* AST for expressions *)
module Expr =
struct

	type t =
	| Var   of string
	| Const of int
	| BinOp of string * t * t	 

	ostap (
	parse: 
	head:and_op tail:("!!" and_op)*{
	  List.fold_left(fun left (op, right) -> BinOp(Token.repr op, left, right)) head tail}
	| and_op; 
	
	and_op:
	head:comp_op tail:("&&" comp_op)*{
	  List.fold_left(fun left (op, right) -> BinOp(Token.repr op, left, right)) head tail}
	| comp_op;
	
	comp_op:
	head:addsub_op tail:((">=" | ">" | "<=" | "<" | "==" | "!=") addsub_op)*{
	  List.fold_left(fun left (op, right) -> BinOp(Token.repr op, left, right)) head tail}
	| addsub_op;
	
	addsub_op:
	head:muldiv_op tail:(("+" | "-") muldiv_op)*{
	  List.fold_left(fun left (op, right) -> BinOp(Token.repr op, left, right)) head tail}
	| muldiv_op;
	
	muldiv_op:
	head:primary tail:(("*" | "/" | "%") primary)*{
	  List.fold_left(fun left (op, right) -> BinOp(Token.repr op, left, right)) head tail}
	| primary;
	
	primary:
	  n:DECIMAL 	{Const n}
	| x:IDENT	{Var x}
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
	| If	 of Expr.t * t * t
	| While  of Expr.t * t
	| Repeat of Expr.t * t 
	
	ostap (
	parse:
		s:simp ";" d:parse {Seq(s,d)}
		|simp;
	expr:	
		!(Expr.parse);
	simp: 
		x:IDENT ":=" e:expr  		{Assign (x, e)}
		| %"read"  "(" x:IDENT ")" 	{Read x}
		| %"write" "(" e:expr  ")" 	{Write e}
		| %"skip"                  	{Skip}
		| %"if" e:expr
		  %"then" s:parse
		  %"fi"				{If(e,s,Skip)}
		| %"if" e:expr
		  "then" s1:parse
		  "else" s2:parse
		  "fi"				{If(e,s1,s2)}
		| %"while" e:expr 
		  "do" s:parse 
		  "od"				{While(e,s)}
		| %"repeat" s:parse
		  "until" e:expr		{Repeat(e,s)}
		| %"for" s1:parse
		  "," e:expr
		  "," s2:parse
		  "do" s3:parse
		  "od" 			{Seq(s1,While(e,Seq(s3,s2)))})
end

module Program =
struct
	type t = Stmt.t
	let parse = Stmt.parse
end


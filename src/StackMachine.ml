(* Stack Machine *)
module Instr =
  struct

    type t =
      | READ
      | WRITE
      | PUSH of int
      | LD   of string
      | ST   of string
      | ADD
      | MUL
      | SUB
      | DIV
      | MOD
      | LT
      | LE
      | GT
      | GE
      | EQ
      | NEQ
      | AND
      | OR

  end

module Program =
  struct

    type t = Instr.t list

  end

module Interpret =
  struct

    open Instr
    open Interpret.Stmt

    let run prg input =
      let rec run' prg ((stack, st, input, output) as conf) =
	match prg with
	| []        -> conf
	| i :: prg' ->
            run' prg' (
            match i with
            | READ  -> let z :: input' = input in
              (z :: stack, st, input', output)
            | WRITE -> let z :: stack' = stack in
              (stack', st, input, output @ [z])
	    | PUSH n -> (n :: stack, st, input, output)
            | LD   x -> (st x :: stack, st, input, output)
	    | ST   x -> let z :: stack' = stack in
              (stack', update st x z, input, output)
      | ADD -> let y :: x :: stack' = stack in
              ((x + y):: stack', st, input, output)
      | MUL -> let y :: x :: stack' = stack in
              ((x * y):: stack', st, input, output)
      | SUB -> let y :: x :: stack' = stack in
              ((x - y):: stack', st, input, output)
      | DIV -> let y :: x :: stack' = stack in
              ((x / y):: stack', st, input, output)
      | MOD -> let y :: x :: stack' = stack in
              ((x mod y):: stack', st, input, output)
      | LT -> let y :: x :: stack' = stack in
              ((if x < y then 1 else 0):: stack', st, input, output)
      | LE -> let y :: x :: stack' = stack in
              ((if x <= y then 1 else 0):: stack', st, input, output)
      | GT -> let y :: x :: stack' = stack in
              ((if x > y then 1 else 0):: stack', st, input, output)
      | GE -> let y :: x :: stack' = stack in
              ((if x >= y then 1 else 0):: stack', st, input, output)
      | EQ -> let y :: x :: stack' = stack in
              ((if x == y then 1 else 0):: stack', st, input, output)
      | NEQ -> let y :: x :: stack' = stack in
              ((if x <> y then 1 else 0):: stack', st, input, output)
      | AND -> let y :: x :: stack' = stack in
              ((if (x <> 0) && (y <> 0) then 1 else 0):: stack', st, input, output)
      | OR -> let y :: x :: stack' = stack in
              ((if (x <> 0) || (y <> 0) then 1 else 0):: stack', st, input, output)
           )
      in
      let (_, _, _, output) =
	run' prg ([],
	          (fun _ -> failwith "undefined variable"),
	          input,
	          []
	         )
      in
      output
  end

module Compile =
  struct

    open Instr

    module Expr =
      struct

	open Language.Expr

	let rec compile = function
	| Var x               -> [LD   x]
	| Const n             -> [PUSH n]
  | Binop ("+", x, y)   -> (compile x) @ (compile y) @ [ADD]
  | Binop ("-", x, y)   -> (compile x) @ (compile y) @ [SUB]
  | Binop ("*", x, y)   -> (compile x) @ (compile y) @ [MUL]
  | Binop ("/", x, y)   -> (compile x) @ (compile y) @ [DIV]
  | Binop ("%", x, y)   -> (compile x) @ (compile y) @ [MOD]
  | Binop ("<", x, y)   -> (compile x) @ (compile y) @ [LT]
  | Binop ("<=", x, y)  -> (compile x) @ (compile y) @ [LE]
  | Binop (">", x, y)   -> (compile x) @ (compile y) @ [GT]
  | Binop (">=", x, y)  -> (compile x) @ (compile y) @ [GE]
  | Binop ("==", x, y)  -> (compile x) @ (compile y) @ [EQ]
  | Binop ("!=", x, y)  -> (compile x) @ (compile y) @ [NEQ]
  | Binop ("&&", x, y)  -> (compile x) @ (compile y) @ [AND]
  | Binop ("!!", x, y)  -> (compile x) @ (compile y) @ [OR]

      end

    module Stmt =
      struct

	open Language.Stmt

	let rec compile = function
	| Skip          -> []
	| Assign (x, e) -> Expr.compile e @ [ST x]
	| Read    x     -> [READ; ST x]
	| Write   e     -> Expr.compile e @ [WRITE]
	| Seq    (l, r) -> compile l @ compile r

      end

    module Program =
      struct

	let compile = Stmt.compile

      end

  end

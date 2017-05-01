(* Stack Machine *)
module Instr =
  struct

    type t =
      | READ
      | WRITE
      | PUSH of int
      | LD   of string
      | ST   of string
      | BINOP of string

  end

module Program =
  struct

    type t = Instr.t list

  end

module Interpret =
  struct

    open Instr
    open Interpret.Stmt
    open Language.BinOp

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
	    | BINOP op ->
		  let y::x::stack' = stack in
                  ((apply op x y)::stack', st, input, output)
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
	| Var x      -> [LD   x]
	| Const n    -> [PUSH n]
    | Binop (op, x, y) -> (compile x) @ (compile y) @ [BINOP op]

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


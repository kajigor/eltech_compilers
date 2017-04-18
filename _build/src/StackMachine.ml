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
      | DISJUNCTION
      | CONJUCTION
      | EQUAL
      | INEQUALITY
      | LESS
      | GREATER
      | LESSEQUAL
      | GREATEREQUAL
      | SUBTRACTION
      | DIVISION
      | DIVIDED

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
	    | _ -> let y :: x :: stack' = stack in
              ((match i with 
              | ADD          ->   ( + ) 
              | SUBTRACTION  ->   ( - )
              | MUL          ->   ( * )
              | DIVISION     ->   ( / )
              | DIVIDED      ->   ( mod )
              | CONJUCTION   ->   (fun a b -> if (a == 0) && (b == 0) then 0 else 1)
              | DISJUNCTION  ->   (fun a b -> if (a == 0) || (b == 0) then 0 else 1)
              | EQUAL        ->   (fun a b -> if (a == b) then 1 else 0)
              | INEQUALITY   ->   (fun a b -> if (a != b) then 1 else 0)
              | LESS         ->   (fun a b -> if (a < b) then 1 else 0)
              | GREATER      ->   (fun a b -> if (a > b) then 1 else 0)
              | LESSEQUAL    ->   (fun a b -> if (a <= b) then 1 else 0)
              | GREATEREQUAL ->   (fun a b -> if (a >= b) then 1 else 0)) 
              x y :: stack', 
               st, 
               input, 
               output
              )
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
	| Add (x, y) -> (compile x) @ (compile y) @ [ADD]
	| Mul (x, y) -> (compile x) @ (compile y) @ [MUL]
  | Disjunction (x, y) -> (compile x) @ (compile y) @ [DISJUNCTION]
  | Conjunction (x, y) -> (compile x) @ (compile y) @ [CONJUCTION]
  | Equal (x, y) -> (compile x) @ (compile y) @ [EQUAL]
  | Inequality (x, y) -> (compile x) @ (compile y) @ [INEQUALITY]
  | Less (x, y) -> (compile x) @ (compile y) @ [LESS]
  | Greater (x, y) -> (compile x) @ (compile y) @ [GREATER]
  | LessEqual (x, y) -> (compile x) @ (compile y) @ [LESSEQUAL]
  | GreaterEqual (x, y) -> (compile x) @ (compile y) @ [GREATEREQUAL]
  | Subtraction (x, y) -> (compile x) @ (compile y) @ [SUBTRACTION]
  | Division (x, y) -> (compile x) @ (compile y) @ [DIVISION]
  | Dividend (x, y) -> (compile x) @ (compile y) @ [DIVIDED]

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


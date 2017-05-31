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
	  | AND
	  | OR
	  | EQUALS
	  | NOT_EQUALS
	  | GREATER
	  | LESS
	  | GREATER_EQUALS
	  | LESS_EQUALS
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
      let rec run' ((prg,stack, st, input, output) as conf) =
	match prg with
	| []        -> conf
	| i :: prg' ->
            run'(
            match i with
            | READ  -> let z :: input' = input in
              (prg',z :: stack, st, input', output)
            | WRITE -> let h :: stack' = stack in
              (prg',stack', st, input, output @ [h])
	    | PUSH n -> (prg',n :: stack, st, input, output)
            | LD   x -> (prg',st x :: stack, st, input, output)
	    | ST   x -> let h :: stack' = stack in
              (prg',stack', update st x h, input, output)

	    | _ -> let y :: x :: stack'' = stack in
              (prg',(match i with 
		 | ADD -> ( + )
                 | MUL -> ( * )
	             | SUB -> ( - )
	             | DIV -> ( / )
	             | MOD -> ( mod )
	             | AND -> ( fun a b -> if (a == 1) && (b == 1)  then 1 	 else 0)
	             | OR -> ( fun a b -> if (a == 0) && (b == 0)   then 0 else 1)
	             | EQUALS -> ( fun a b -> if (a == b)  then 1  else 0)
	             | NOT_EQUALS -> ( fun a b -> if (a == b)  then 0 else 1)
	             | GREATER -> ( fun a b -> if (a > b)  then 1  else 0)
	             | LESS -> ( fun a b -> if (a < b)    then 1 else 0)
	             | GREATER_EQUALS -> ( fun a b -> if (a < b) then 0   else 1)
	             | LESS_EQUALS -> ( fun a b -> if (a > b)  then 0  else 1)
			  ) x y :: stack'', 
               st, 
               input, 
               output
              )
           )
      in
      let (_,_, _, _, output) = 
	run' (prg,[], 
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

	let rec compile = 
	let twoargs op (x,y) = (compile x) @ (compile y) @ [op] in
	function 
	| Var x      -> [LD   x]
	| Const n    -> [PUSH n]
	| Add (x, y) -> twoargs ADD (x, y)
	| Mul (x, y) -> twoargs MUL (x, y)
	| Sub  (x, y) -> twoargs SUB (x, y)
	| Div  (x, y) -> twoargs DIV (x, y)
	| Mod  (x, y) -> twoargs MOD (x, y)
	| And  (x, y) -> twoargs AND (x, y)
	| Or   (x, y) -> twoargs OR (x, y)
    | Equals (x, y) -> twoargs EQUALS (x, y)
	| NotEquals (x, y) -> twoargs NOT_EQUALS (x, y)
    | Greater  (x, y) -> twoargs GREATER (x, y)
    | Less  (x, y) -> twoargs LESS (x, y)
    | GreaterEquals  (x, y) -> twoargs GREATER_EQUALS (x, y)
    | LessEquals  (x, y) -> twoargs LESS_EQUALS (x, y)
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


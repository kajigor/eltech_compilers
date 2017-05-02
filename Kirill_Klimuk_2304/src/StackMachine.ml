(* Stack Machine *)
module Instr =
  struct

    type t =
      | READ
      | WRITE
      | PUSH  of int
      | LD    of string
      | ST    of string
      | BIN   of string
	  | JMP   of string
	  | JZ	  of string
	  | LABEL of string
  end

module Program =
  struct

    type t = Instr.t list

  end

module Interpret =
  struct

    open Instr
    open Interpret.Stmt
	open Language.Expr
	
	let findLabelCode prg lbl = 
		let rec findLabelCode' prg =
			match prg with
			| [] -> failwith(Printf.sprintf "No label: %s" lbl)
			| (LABEL l) :: prg' -> if l = lbl then prg' else findLabelCode' prg'
			| i :: prg' -> findLabelCode' prg'
		in findLabelCode' prg
			
    let run fullPrg input =
      let rec run' prg ((stack, st, input, output) as conf) =
	match prg with
	| []        -> conf
	| (JMP s) :: prg'-> run' (findLabelCode fullPrg s) (stack, st, input, output)
	| (JZ s)  :: prg' -> let x :: stack' = stack in 
						if (x == 0) then run' (findLabelCode fullPrg s) (stack', st, input, output)
									else run' prg' (stack', st, input, output)							
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
			| BIN  f -> let y :: x :: stack' = stack in
              ((operation_to_func f) x y :: stack', 
               st, 
               input, 
               output
              )
			| LABEL s -> (stack, st, input, output)
           )
      in
      let (_, _, _, output) = 
	run' fullPrg ([], 
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
	| Bin (f, x, y) -> (compile x) @ (compile y) @ [BIN f]

      end

    module Stmt =
      struct

	open Language.Stmt
	
	let gen_label length =
		let gen() = match Random.int(26+26) with
			n when n < 26 -> int_of_char 'a' + n
		  | n when n < 26 + 26 -> int_of_char 'A' + n - 26 in
		let gen _ = String.make 1 (char_of_int(gen())) in
		String.concat "" (Array.to_list (Array.init length gen))        
	
	let rec compile = function
	| Skip          -> []
	| Assign (x, e) -> Expr.compile e @ [ST x]
	| Read    x     -> [READ; ST x]
	| Write   e     -> Expr.compile e @ [WRITE]
	| Seq    (l, r) -> compile l @ compile r
	| IfElse (e, s1, s2) -> let elseLbl = gen_label (Random.int(15)+1) in 
							let endLbl = gen_label (Random.int(15)+1)  in 
							Expr.compile e @ [JZ elseLbl] @ compile s1 @ [JMP endLbl] @
							[LABEL elseLbl] @ compile s2 @ [LABEL endLbl]
	| WhileDo (e, s)     -> let startLbl = gen_label (Random.int(15)+1) in 
							let endLbl = gen_label (Random.int(15)+1)  in 
							[LABEL startLbl] @ Expr.compile e @ [JZ endLbl] @ 
							compile s @ [JMP startLbl] @ [LABEL endLbl]					
	| ForDo   (e,a,s) 	 -> let startLbl = gen_label (Random.int(15)+1) in 
							let endLbl = gen_label (Random.int(15)+1)  in 
							[LABEL startLbl] @ Expr.compile e @ [JZ endLbl] @ 
							compile s @ compile a @[JMP startLbl] @ [LABEL endLbl]	
	| RepeatUntil (s,e  )-> let startLbl = gen_label (Random.int(15)+1) in 
							[LABEL startLbl] @ compile s @ Expr.compile e @ [JZ startLbl] 	
						
      end

    module Program =
      struct

	let compile = Stmt.compile

      end

  end


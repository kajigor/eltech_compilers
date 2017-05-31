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
	| SUB
	| MUL
	| DIV
	| MOD
	| OR
	| AND
	| EQU
	| NEQU
	| LESS
	| GREAT
	| LEQU
	| GEQU
	| LABEL of int
	| CJMP of int * string
	| JMP of int
end

module Program =
struct
	type t = Instr.t list
end

module Interpret =
struct

	open Instr
	open Interpret.Stmt

	let rec go_to prg label = 
	let i::prg' = prg in
		if(i = label) 
		then prg'
		else go_to prg' label

	let run prg input =
	let prg_copy = prg in 
		let rec run' ((prg, stack, st, input, output) as conf) =
		match prg with
		| []        -> conf
		| i :: prg' ->
			run'(
			match i with
			| READ -> let z :: input' = input in
				(prg', z :: stack, st, input', output)
			| WRITE -> let z :: stack' = stack in
				(prg', stack', st, input, output @ [z])
			| PUSH n -> 
				(prg', n :: stack, st, input, output)
			| LD x -> 
				(prg', st x :: stack, st, input, output)
			| ST x -> let z :: stack' = stack in
				(prg', stack', update st x z, input, output)   	              	
			| LABEL s ->
				(prg', stack, st, input, output)
			| CJMP (s,c) ->
				let z :: stack' = stack in
				if(
					match c with
					| "z" -> (z = 0)
					| "nz" -> (z != 0))
				then (go_to prg_copy (LABEL s), stack', st, input, output)
				else (prg', stack', st, input, output)
			| JMP s ->
				(go_to prg_copy (LABEL s), stack, st, input, output)
			| _ ->
				let y :: x :: stack' = stack in
				( prg', 
				( match i with
					| ADD 	-> ( + )
					| SUB	-> ( - )
					| MUL	-> ( * )
					| DIV	-> ( / )
					| MOD	-> ( mod )
					| OR	-> (fun l r -> if((l != 0) || (r != 0)) then 1 else 0)
					| AND	-> (fun l r -> if((l != 0) && (r != 0)) then 1 else 0)
					| EQU	-> (fun l r -> if(l == r) then 1 else 0)
					| NEQU	-> (fun l r -> if(l == r) then 0 else 1)
					| LESS	-> (fun l r -> if(l < r)  then 1 else 0)
					| GREAT	-> (fun l r -> if(l > r)  then 1 else 0)
					| LEQU	-> (fun l r -> if(l <= r) then 1 else 0)
					| GEQU 	-> (fun l r -> if(l >= r) then 1 else 0)
				) x y :: stack',
				st,
				input,
				output)           	)
				in
				let (_, _, _, _, output) = 
				run' (prg, [], 
				(fun _ -> failwith "undefined variable"),
				input, []) 
		in
		output
end

module Compile =
struct

	open Instr

	class lbl_gen = 
	object(this)
		val mutable num = 0
		method next_lbl = num <- (num+1); num
	end

	module Expr =
	struct

		open Language.Expr

		let rec compile = 
		function 
		| Var x			-> [LD   x]
		| Const n 		-> [PUSH n]
		| BinOp (o,x,y)	-> (compile x) @ (compile y) @
			(match o with
			|"+"  -> [ADD]
			|"-"  -> [SUB]
			|"*"  -> [MUL]
			|"/"  -> [DIV]
			|"%"  -> [MOD]
			|"==" -> [EQU]
			|"!=" -> [NEQU]
			|"<"  -> [LESS]
			|"<=" -> [LEQU]
			|">"  -> [GREAT]
			|">=" -> [GEQU]
			|"!!" -> [OR]
			|"&&" -> [AND])		
	end

   	module Stmt =
	struct

		open Language.Stmt

		let rec compile lblgen = function
		| Skip 					-> []
		| Assign (x, e)			-> Expr.compile e @ [ST x]
		| Read	  x 			-> [READ; ST x]
		| Write   e				-> Expr.compile e @ [WRITE]
		| Seq    (l, r)			-> compile lblgen l @ compile lblgen r
		| If 	 (e, s1, s2)	->
			let l1 = lblgen#next_lbl in
			let l2 = lblgen#next_lbl in
				Expr.compile e @
				[CJMP (l1,"z")] @
				compile lblgen s1 @
				[JMP(l2)] @
				[LABEL(l1)] @
				compile lblgen s2 @
				[LABEL(l2)]
		| While (e,s)			->
			let l1 = lblgen#next_lbl in
			let l2 = lblgen#next_lbl in
				[JMP(l2)] @
				[LABEL(l1)] @
				compile lblgen s @
				[LABEL(l2)] @
				Expr.compile e @
				[CJMP(l1,"nz")]
		| Repeat(e,s)			-> 
			let l = lblgen#next_lbl in
				[LABEL(l)] @
				compile lblgen s @
				Expr.compile e @
				[CJMP(l,"z")]							
	end

	module Program =
	struct
		let compile = Stmt.compile (new lbl_gen)
	end

end


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
      | DIVD
      | OR
      | AND
      | EQUAL
      | NOTEQUAL
      | LESS
      | GREATER
      | LESSEQUAL
      | GREATEREQUAL
      | LBL  of int
      | CJMP of int * string
      | JMP  of int
  end

module Program =
  struct

    type t = Instr.t list

  end

module Interpret =
  struct

    open Instr
    open Interpret.Stmt
    let rec findlb prg lb =
    let nom :: prg' = prg in
    if nom = lb then prg' 
    else findlb prg' lb 

    let run prg input =
      let prg_full = prg in
      let rec run'  ((prg,stack, st, input, output) as conf) =
	match prg with
	| []        -> conf
	| i :: prg' ->
            run'  (
            match i with
            | READ  -> let z :: input' = input in
              (prg',z :: stack, st, input', output)
            | WRITE -> let z :: stack' = stack in
              (prg',stack', st, input, output @ [z])
	    | PUSH n -> (prg',n :: stack, st, input, output)
            | LD   x -> (prg',st x :: stack, st, input, output)
	    | ST   x -> let z :: stack' = stack in
              (prg',stack', update st x z, input, output)
            | LBL  m     -> (prg', stack, st, input, output)
            | JMP  m     -> (findlb prg_full (LBL m), stack, st, input, output)
            | CJMP (m,c) -> let nom :: stack' = stack in
                          if (match c with 
                            | "z"  -> (nom = 0) 
                            | "nz" -> (nom != 0)) 
                          then (findlb prg_full (LBL m), stack', st, input, output)
                          else (prg', stack', st, input, output)
	    | _ -> let y :: x :: stack' = stack in
              (prg',(match i with 
		|ADD -> (+) 
 		| SUB           -> ( - )
                | MUL           -> ( * )
                | DIV           -> ( / )
                | DIVD           -> ( mod )
                | OR            -> (fun a b -> if (a == 0) && (b == 0) then 0 else 1)
                | AND           -> (fun a b -> if (a == 0) || (b == 0) then 0 else 1)
		| EQUAL         -> (fun a b -> if (a == b) then 1 else 0)
                | NOTEQUAL      -> (fun a b -> if (a != b) then 1 else 0)
                | LESS          -> (fun a b -> if (a < b) then 1 else 0)
                | GREATER       -> (fun a b -> if (a > b) then 1 else 0)
                | LESSEQUAL     -> (fun a b -> if (a <= b) then 1 else 0)
                | GREATEREQUAL  -> (fun a b -> if (a >= b) then 1 else 0))
	        x y :: stack', 
               st, 
               input, 
               output
              )
           )
      in
      let (_, _, _, _, output) = 
	run'  (prg,[], 
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
	function 
	| Var x      -> [LD   x]
	| Const n    -> [PUSH n]
	| Add (x, y) 	      -> (compile x) @ (compile y) @ [ADD]
	| Mul (x, y) 	      -> (compile x) @ (compile y) @ [MUL]
	| Sub (x, y) 	      -> (compile x) @ (compile y) @ [SUB]
	| Div (x, y) 	      -> (compile x) @ (compile y) @ [DIV]
    	| Divd (x, y) 	      -> (compile x) @ (compile y) @ [DIVD]
    	| Or (x, y)  	      -> (compile x) @ (compile y) @ [OR]
    	| And (x, y) 	      -> (compile x) @ (compile y) @ [AND]
	| Equal (x, y)        -> (compile x) @ (compile y) @ [EQUAL]
        | NotEqual (x, y)     -> (compile x) @ (compile y) @ [NOTEQUAL]
        | Less (x, y)         -> (compile x) @ (compile y) @ [LESS]
        | Greater (x, y)      -> (compile x) @ (compile y) @ [GREATER]
        | LessEqual (x, y)    -> (compile x) @ (compile y) @ [LESSEQUAL]
        | GreaterEqual (x, y) -> (compile x) @ (compile y) @ [GREATEREQUAL]

      end

class lbcounter =
    object (this)
      val mutable count  = 0
      method add_lbs n  = count <- (count + n)
      method get_count   = count
    end

    module Stmt =
      struct

	open Language.Stmt

	let rec compile lb= function
	| Skip          -> []
	| Assign (x, e) -> Expr.compile e @ [ST x]
	| Read    x     -> [READ; ST x]
	| Write   e     -> Expr.compile e @ [WRITE]
	| Seq    (l, r) -> compile lb l @ compile lb r
	| op ->
      	 lb#add_lbs 2;
         let l1   = lb#get_count-1 in
         let l2   = lb#get_count in
         match op with
        | If (exp, pt1, pt2) ->
          Expr.compile exp @
          [CJMP (l1,"z")] @
          compile lb pt1 @
          [JMP l2] @
          [LBL l1] @
          compile lb pt2 @
          [LBL l2]

        | While (exp, pt)     ->
          [JMP l1] @
          [LBL l2] @
          compile lb pt @
          [LBL l1] @
          Expr.compile exp @
          [CJMP (l2, "nz")]
          
        | Until (pt, exp)     ->
          [LBL l1] @
          compile lb pt @
          Expr.compile exp @
          [CJMP (l1, "z")]
      end

    module Program =
      struct

	let compile = Stmt.compile (new lbcounter)

      end

  end


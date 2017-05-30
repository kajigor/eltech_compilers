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
      | REM
      | OR
      | AND
      | EQUAL
      | NEQUAL
      | LESS
      | GREATER
      | LEQUAL
      | GEQUAL
      | LBL  of int
      | JMP  of int
      | CJMP of int * string

  end

module Program =
  struct

    type t = Instr.t list

  end

module Interpret =
  struct

    open Instr
    open Interpret.Stmt

    let rec findlbl prg lbl =
      let h :: prg' = prg in
      if h = lbl then prg' 
      else findlbl prg' lbl

    let run prg input =
      let prg_full = prg in
      let rec run' ((prg, stack, st, input, output) as conf) =
	match prg with
	| []        -> conf
	| i :: prg' ->
            run' (
            match i with
            | READ   -> let z :: input' = input in
              (prg', z :: stack, st, input', output)
            | WRITE  -> let z :: stack' = stack in
              (prg', stack', st, input, output @ [z])
	    | PUSH n -> (prg', n :: stack, st, input, output)
            | LD   x -> (prg', st x :: stack, st, input, output)
	    | ST   x -> let z :: stack' = stack in
              (prg', stack', update st x z, input, output)
          | LBL  m     -> (prg', stack, st, input, output)
          | JMP  m     -> (findlbl prg_full (LBL m), stack, st, input, output)
          | CJMP (m,c) -> let z :: stack' = stack in
                          if (match c with 
                            | "z"  -> (z = 0) 
                            | "nz" -> (z != 0)) 
                          then (findlbl prg_full (LBL m), stack', st, input, output)
                          else (prg', stack', st, input, output)
          | _ -> 
            let y :: x :: stack'' = stack in
            (prg', (match i with 
              | ADD     -> ( + ) 
              | SUB     -> ( - )
              | MUL     -> ( * )
              | DIV     -> ( / )
              | REM     -> ( mod )
              | OR      -> (fun a b -> if (a == 0) && (b == 0) then 0 else 1)
              | AND     -> (fun a b -> if (a == 0) || (b == 0) then 0 else 1)
              | EQUAL   -> (fun a b -> if (a == b) then 1 else 0)
              | NEQUAL  -> (fun a b -> if (a != b) then 1 else 0)
              | LESS    -> (fun a b -> if (a <  b) then 1 else 0)
              | GREATER -> (fun a b -> if (a >  b) then 1 else 0)
              | LEQUAL  -> (fun a b -> if (a <= b) then 1 else 0)
              | GEQUAL  -> (fun a b -> if (a >= b) then 1 else 0)
            ) x y :: stack'', st, input, output)
        )
  in
      let (_,_, _, _, output) = 
	run' (prg, [], 
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
    | Var      x     -> [LD   x]
    | Const    n     -> [PUSH n]
    | Add     (x, y) -> (compile x) @ (compile y) @ [ADD]
    | Sub     (x, y) -> (compile x) @ (compile y) @ [SUB]
    | Mul     (x, y) -> (compile x) @ (compile y) @ [MUL]
    | Div     (x, y) -> (compile x) @ (compile y) @ [DIV]
    | Rem     (x, y) -> (compile x) @ (compile y) @ [REM]
    | Or      (x, y) -> (compile x) @ (compile y) @ [OR]
    | And     (x, y) -> (compile x) @ (compile y) @ [AND]
    | Equal   (x, y) -> (compile x) @ (compile y) @ [EQUAL]
    | NEqual  (x, y) -> (compile x) @ (compile y) @ [NEQUAL]
    | Less    (x, y) -> (compile x) @ (compile y) @ [LESS]
    | Greater (x, y) -> (compile x) @ (compile y) @ [GREATER]
    | LEqual  (x, y) -> (compile x) @ (compile y) @ [LEQUAL]
    | GEqual  (x, y) -> (compile x) @ (compile y) @ [GEQUAL]

      end

  class lblcounter =
    object (this)
      val mutable count  = 0
      method add_lbls n  = count <- (count + n)
      method get_count   = count
    end

    module Stmt =
      struct

	open Language.Stmt

    let rec compile lblc = function
    | Skip                  -> []
    | Assign (x, e)         -> Expr.compile e @ [ST x]
    | Read    x             -> [READ; ST x]
    | Write   e             -> Expr.compile e @ [WRITE]
    | Seq    (l, r)         -> compile lblc l @ compile lblc r
    | op ->
      lblc#add_lbls 2;
      let lbl1   = lblc#get_count-1 in
      let lbl2   = lblc#get_count in
      match op with
      | If (exp, seq1, seq2) ->
          Expr.compile exp @
          [CJMP (lbl1,"z")] @
          compile lblc seq1 @
          [JMP lbl2] @
          [LBL lbl1] @
          compile lblc seq2 @
          [LBL lbl2]

      | While (exp, seq)     ->
          [JMP lbl1] @
          [LBL lbl2] @
          compile lblc seq @
          [LBL lbl1] @
          Expr.compile exp @
          [CJMP (lbl2, "nz")]
          
      | Repeat (seq, exp)     ->
          [LBL lbl1] @
          compile lblc seq @
          Expr.compile exp @
          [CJMP (lbl1, "z")]

      end

    module Program =
      struct

	let compile = Stmt.compile (new lblcounter)

      end

  end


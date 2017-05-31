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
      | LBL of string
      | JNZ of string
      | JZ of string
      | JMP of string

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
    
      let goto lbl =
        let rec findl prg lbl =
          let i :: prg' = prg in
            if i = lbl then prg'
            else findl prg' lbl in
        findl prg lbl in

      let rec run' ((prg, stack, st, input, output) as conf) =
      	match prg with
      	| []        -> conf
      	| i :: prg' ->
            run' (
              match i with
              | READ  -> let z :: input' = input in
                      (prg', z :: stack, st, input', output)
              | WRITE -> let z :: stack' = stack in
                      (prg', stack', st, input, output @ [z])
              | PUSH n -> 
                      (prg', n :: stack, st, input, output)
              | LD   x -> 
                      (prg', st x :: stack, st, input, output)
              | ST   x -> let z :: stack' = stack in
                      (prg', stack', update st x z, input, output)
              | ADD -> let y :: x :: stack' = stack in
                      (prg', (x + y):: stack', st, input, output)
              | MUL -> let y :: x :: stack' = stack in
                      (prg', (x * y):: stack', st, input, output)
              | SUB -> let y :: x :: stack' = stack in
                      (prg', (x - y):: stack', st, input, output)
              | DIV -> let y :: x :: stack' = stack in
                      (prg', (x / y):: stack', st, input, output)
              | MOD -> let y :: x :: stack' = stack in
                      (prg', (x mod y):: stack', st, input, output)
              | LT -> let y :: x :: stack' = stack in
                      (prg', (if x < y then 1 else 0):: stack', st, input, output)
              | LE -> let y :: x :: stack' = stack in
                      (prg', (if x <= y then 1 else 0):: stack', st, input, output)
              | GT -> let y :: x :: stack' = stack in
                      (prg', (if x > y then 1 else 0):: stack', st, input, output)
              | GE -> let y :: x :: stack' = stack in
                      (prg', (if x >= y then 1 else 0):: stack', st, input, output)
              | EQ -> let y :: x :: stack' = stack in
                      (prg', (if x == y then 1 else 0):: stack', st, input, output)
              | NEQ -> let y :: x :: stack' = stack in
                      (prg', (if x <> y then 1 else 0):: stack', st, input, output)
              | AND -> let y :: x :: stack' = stack in
                      (prg', (if (x <> 0) && (y <> 0) then 1 else 0):: stack', st, input, output)
              | OR -> let y :: x :: stack' = stack in
                      (prg', (if (x <> 0) || (y <> 0) then 1 else 0):: stack', st, input, output)

              | LBL  _ -> (prg', stack, st, input, output)
              | JNZ  l -> let x :: stack' = stack in
                      if x <> 0 then (goto (LBL l), stack', st, input, output)
                      else (prg', stack', st, input, output)
              | JZ   l -> let x :: stack' = stack in
                      if x == 0 then (goto (LBL l), stack', st, input, output)
                      else (prg', stack', st, input, output)
              | JMP  l -> (goto (LBL l), stack, st, input, output)
            )
      in
      let (_, _, _, _, output) = 
          run' (prg,
          [], 
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

    let lblCounter = ref 0

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

        
        let get_next_label() =
            incr lblCounter;
            ".lbl"^string_of_int !lblCounter

      	let rec compile = function
      	| Skip          -> []
      	| Assign (x, e) -> Expr.compile e @ [ST x]
      	| Read    x     -> [READ; ST x]
      	| Write   e     -> Expr.compile e @ [WRITE]
      	| Seq    (l, r) -> compile l @ compile r

        | If(e, s1, s2) -> let lbl1 = get_next_label() in
                           let lbl2 = get_next_label() in
                           Expr.compile e @
                           [JZ lbl1] @
                           compile s1 @
                           [JMP lbl2; LBL lbl1] @
                           compile s2 @
                           [LBL lbl2]

        | While  (e, s) -> let lbl1 = get_next_label() in
                           let lbl2 = get_next_label() in
                           [JMP lbl2; LBL lbl1] @
                           compile s @
                           [LBL lbl2] @
                           Expr.compile e @
                           [JNZ lbl1]

      end

    module Program =
      struct

	     let compile = Stmt.compile

      end

  end


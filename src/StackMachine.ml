(* Stack Machine *)
module Instr =
  struct

    type t =
      | READ
      | WRITE
      | PUSH  of int
      | LD    of string
      | ST    of string
      | BINOP of string
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
      | LBL  of string
      | JNZ  of string
      | JZ   of string
      | JMP  of string
      | CALL of string * string list
      | DROP
      | BEGIN of string * string list * string list
      | END
      | RET

  end

module Program =
  struct

    type t = Instr.t list

  end

module Interpret =
  struct

    open Instr
    open Interpret.Stmt

    let rec goto prg lbl =
    match prg with
    | []            -> []
    | (LBL l)::prg' ->
                      if lbl = l then prg' else goto prg' lbl
    |  _::prg'     -> goto prg' lbl
(*    let rec goto prg lbl =
    let i :: prg' = prg in
    if i = lbl then prg'
    else goto prg' lbl
*)

    let run prg input =
    let prg_origin = prg in
      let rec run' ((prg, stack, cstack, st, input, output) as conf) =
	match prg with
	| []        -> conf
	| i :: prg' ->
            run' (
            match i with
      | END    -> ([], stack, cstack, st, input, output)
      | READ   -> let z :: input' = input in
                  (prg', z :: stack, cstack, st, input', output)
      | WRITE  -> let z :: stack' = stack in
                  (prg', stack', cstack, st, input, output @ [z])
	    | PUSH n -> (prg', n :: stack, cstack, st, input, output)
      | LD   x -> (prg', (List.assoc x st) :: stack, cstack, st, input, output)
	    | ST   x -> let z :: stack' = stack in
                  (prg', stack', cstack, (x, z)::st, input, output)
      | BINOP op -> let y :: x :: stack' = stack in
                    (prg', ((Interpret.Expr.of_binop op) x y):: stack', cstack, st, input, output)
      | LBL  _ -> (prg', stack, cstack, st, input, output)
      | JNZ  l -> let x :: stack' = stack in
                  if x <> 0 then (goto prg_origin l, stack', cstack, st, input, output)
                  else (prg', stack', cstack, st, input, output)
      | JZ   l -> let x :: stack' = stack in
                  if x == 0 then (goto prg_origin l, stack', cstack, st, input, output)
                  else (prg', stack', cstack, st, input, output)
      | JMP  l -> (goto prg_origin l, stack, cstack, st, input, output)
      | CALL (f, args) ->
              let rec to_pair acc args stack =
              match args, stack with
              | [], _               -> List.rev acc, stack
              | a::args', s::stack' -> to_pair ((a, s)::acc) args' stack'
              in
              let st', stack' = to_pair [] args stack in
              (goto prg_origin (f), stack', (st, prg')::cstack, st', input, output)
            (*  ((env f), stack', (st, prg')::cstack, st', input, output) *)
      | RET ->
            let (st', prg'')::cstack' = cstack in
            (prg'', stack, cstack', st', input, output)
      )
      in
      let (_, _, _, _, _, output) =
	    run' (prg,
            [],
            [],
	          [],
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

	let rec compile env = function
	| Var x               -> [LD   x]
	| Const n             -> [PUSH n]
  | Binop (op, x, y)    -> compile env x @ compile env y @ [BINOP op]
  | Call  (f, args)     ->
      List.flatten (List.map(compile env) (List.rev args)) @ [env#call f]
      end

    module Stmt =
      struct

	open Language.Stmt

  let rec compile env = function
  | Call   (f, args)   -> Expr.compile env (Language.Expr.Call (f, args)) (* @ [DROP] *)
	| Skip               -> []
	| Assign (x, e)      -> env#local x; Expr.compile env e @ [ST x]
	| Read    x          -> env#local x; [READ; ST x]
	| Write   e          -> Expr.compile env e @ [WRITE]
	| Seq    (l, r)      -> compile env l @ compile env r
  | If     (e, s1, s2) ->
                          let lbl1 = env#label in
                          let lbl2 = env#label in
                          Expr.compile env e @
                          [JZ lbl1] @
                          compile env s1 @
                          [JMP lbl2; LBL lbl1] @
                          compile env s2 @
                          [LBL lbl2]
  | While  (e, s)      ->
                          let lbl1 = env#label in
                          let lbl2 = env#label in
                          [JMP lbl2; LBL lbl1] @
                          compile env s @
                          [LBL lbl2] @
                          Expr.compile env e @
                          [JNZ lbl1]
  | Return e            ->
                          Expr.compile env e @ [RET]

      end

    module S = Set.Make (String)

    class senv fs =
    object(self)
      val labels = ref 0
      val args   = ref S.empty
      val locals = ref S.empty

      method local x      = if not (S.mem x !args) then locals := S.add x !locals
      method get_locals   = S.elements !locals
      method start_fun a  = locals := S.empty; args := List.fold_right S.add a S.empty
      method label        = let l = Printf.sprintf "L.%d" ! labels in incr labels; l
      method call f       = let args, _ = List.assoc f fs in CALL ("L." ^ f, args)
      method funs         =
            List.flatten @@
            List.map
              (fun (f, (a, s)) ->
                self#start_fun a;
                let code = Stmt.compile self s in
                BEGIN (f, a, self#get_locals) :: (LBL ("L." ^ f)) :: code @ [END]
              )
              fs
    end

    let printer = function
    | READ      -> Printf.printf "READ; "
    | WRITE     -> Printf.printf "WRITE; "
    | PUSH  i   -> Printf.printf "PUSH %d; " i
    | LD    s   -> Printf.printf "LD %s; " s
    | ST    s   -> Printf.printf "ST %s; " s
    | BINOP s   -> Printf.printf "BINOP %s; " s
    | LBL   s   -> Printf.printf "LBL %s; " s
    | JNZ   s   -> Printf.printf "JNZ %s; " s
    | JZ    s   -> Printf.printf "JZ %s; " s
    | JMP   s   -> Printf.printf "JMP %s; " s
    | CALL (s, l) -> Printf.printf "CALL %s; " s
    | DROP      -> Printf.printf "DROP; "
    | BEGIN (s, l1, l2) -> Printf.printf "BEGIN %s; " s
    | END       -> Printf.printf "END; "
    | RET       -> Printf.printf "RET; "
    | _ -> Printf.printf "INSTR(?); "


  module Program =
  struct
	let compile (fs, s) =
    let env = new senv fs in
    let code = (LBL "main_") :: Stmt.compile env s @ END :: env#funs in
    (*List.map printer code;*)
    code
    end
  end

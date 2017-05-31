(* Stack Machine *)
module Instr =
  struct
    type t = READ | 
             WRITE | 
             PUSH of int | 
             LD of string | 
             ST of string | 
             BINOP of string | 
             GOTO of string | 
             IFGOTO of string * string | 
             LABEL of string
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

     let e_to_op = function
      | "z"  -> (==)
      | "nz" -> (!=)
      | _    -> failwith "Unknown parameter"
           
    let rec find_ip label code =
      match code with
      | [] -> failwith "Unknown label"
      | i::code' -> if i = LABEL label then 0 else  1 + find_ip label code'

    let run prg input =
      let rec run' prg ((stack, st, input, output, ip) as conf) =
        if ip >= (List.length prg)
        then conf
        else let i = (List.nth prg ip) in
	      run' prg (
            match i with
            | READ  -> let z :: input' = input in
              (z :: stack, st, input', output, ip + 1)
            
            | WRITE -> let z :: stack' = stack in
              (stack', st, input, output @ [z], ip + 1)
	          
            | PUSH n -> (n :: stack, st, input, output, ip + 1)
            
            | LD   x -> (st x :: stack, st, input, output, ip + 1)
	          
            | ST   x -> let z :: stack' = stack in
              (stack', update st x z, input, output, ip + 1)
	          
            | BINOP op -> let y::x::stack' = stack in 
                ((apply op x y)::stack', st, input, output, ip + 1)
            
            | LABEL lbl -> (stack, st, input, output, ip + 1)
            
            | GOTO  lbl -> (stack, st, input, output, (find_ip lbl prg))
            
            | IFGOTO (e, lbl) -> let y::stack' = stack in
                (stack', st, input, output, if ((e_to_op e) y 0) then (find_ip lbl prg) else ip + 1)
        )
      in
      let (_, _, _, output, _) = 
	    run' prg ([], (fun _ -> failwith "undefined variable"), input, [], 0) 
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

        let i = ref (-1)
        let create_new_lbl () =
          i:= !i + 1;
          string_of_int !i

	      let rec compile = function
        | Skip          -> []
	      
        | Assign (x, e) -> Expr.compile e @ [ST x]
	      
        | Read    x     -> [READ; ST x]
	      
        | Write   e     -> Expr.compile e @ [WRITE]
	      
        | Seq    (l, r) -> compile l @ compile r
        
        | If     (e, s1, s2) ->
          let lbl1 = create_new_lbl () in
          let lbl2 = create_new_lbl () in
            Expr.compile e @ [IFGOTO ("z", lbl1)] @ compile s1
                           @ [GOTO lbl2; LABEL lbl1] @ compile s2
                           @ [LABEL lbl2]
        
        | While   (e, s)     ->
          let lbl1 = create_new_lbl () in
          let lbl2 = create_new_lbl () in
            [GOTO lbl2; LABEL lbl1] @ compile s @ [LABEL lbl2]
            @ Expr.compile e @ [IFGOTO ("nz", lbl1)]

      end

    module Program =
      struct
	      let compile = Stmt.compile
      end
  end

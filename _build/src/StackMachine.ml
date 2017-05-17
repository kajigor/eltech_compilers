(* Stack Machine *)
module Instr =
  struct

    type t =
      | READ
      | WRITE
      | PUSH of int
      | LD   of string
      | ST   of string
      | BINOP  of string
      | LABEL of int
      | CHECKJMP of int * bool
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

    let rec find_label prg lbl = 
        let x :: prg' = prg in
        if x = lbl then prg'
        else  find_label prg' lbl 

 let operations op x y =
     match op with
      |"+" -> x +  y
      |"*" -> x *  y
      |"/" ->  x /  y
      |"%" ->  x mod  y
      |"-" ->  x -  y
      |"&&"-> if (x == 1) && (y == 1) then 1 else 0
      |"||" ->  if ( x == 1) || (y == 1) then 1 else 0
      |"==" ->  if ( x) == ( y) then 1 else 0
      |"!=" -> if ( x) != ( y) then 1 else 0
      |"<"  -> if ( x) < ( y) then 1 else 0
      |">"  -> if ( x) > ( y) then 1 else 0
      |"<=" -> if ( x) <= ( y) then 1 else 0
      |">=" -> if ( x) >= ( y) then 1 else 0


   let run prg input =
      let full_prg = prg in
      let rec run' prg ((stack, st, input, output) as conf) =

  match prg with
  | []        -> conf
  | i :: prg' ->
          (
            match i with
            | READ  -> let z :: input' = input in 
                      run'  prg' ( z :: stack, st, input', output) 
            | WRITE -> let z :: stack' = stack in
                      run' prg' (stack', st, input, output @ [z])
            | PUSH n -> 
                      run' prg' (n :: stack, st, input, output)
            | LD   x -> 
                      run' prg' ( st x :: stack, st, input, output)
            | ST   x -> let z :: stack' = stack in
                      run' prg' (stack' , update st x z, input, output)
            | LABEL  n    -> 
                     
                      run' prg' (stack, st, input, output)
            | BINOP  f -> 
                      
                      let y :: x :: stack' = stack in
                      (
                       
                      run' prg' (operations f x y :: stack', 
                       st, 
                       input, 
                       output
                      ) )
            | CHECKJMP(n, b)  ->  
                       
                        let x :: stack' = stack in 
                        (
                           
                          if( match b with
                          | true -> x = 0
                          | false -> x!=0 ) then 
                                run'  (find_label full_prg (LABEL n)) (stack', st, input, output)
                          else    
                                run'  prg' (stack', st, input, output))
            |  JMP n ->
                      
                       run'  (find_label full_prg (LABEL n)) (stack, st, input, output)
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
  | Binop (o, x, y) -> (compile x) @ (compile y) @ [BINOP o]
      end
  class number_label  = 
    object (this)
    val mutable n = 0
    method inc_get_n = n<-n+1;n
  end
    module Stmt =
      struct

  open Language.Stmt
  let rec compile mnl = function
  | Skip          -> []
  | Assign (x, e) -> Expr.compile e @ [ST x]
  | Read    x     ->  [READ; ST x]
  | Write   e     ->Expr.compile e @ [WRITE]
  | Seq    (l, r) -> compile mnl l @ compile mnl r
  | If (e, s1, s2)-> 
                    let begincnl = mnl#inc_get_n in 
                    let endcnl = mnl#inc_get_n   in
                    Expr.compile e @  [CHECKJMP(begincnl,true)] @ compile mnl s1 @ [JMP endcnl] @ [LABEL begincnl] @ compile mnl s2 @ [LABEL endcnl]
                    
                    
  | While (e,s,b) ->  
                    let begincnl = mnl#inc_get_n  in 
                    let endcnl = mnl#inc_get_n   in
                    [LABEL begincnl] @ Expr.compile e @  [CHECKJMP(endcnl,b)] @  compile mnl s @ [JMP begincnl] @ [LABEL endcnl] 
                     
                  

      end

    module Program =
      struct

  let compile = Stmt.compile (new number_label)

      end

  end


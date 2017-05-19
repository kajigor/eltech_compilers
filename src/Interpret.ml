open Language

module Env =
  struct
    module M = Map.Make (String)
    (* variables * functions * input * output *)
    let init is = (M.empty, M.empty, is, [])
    let setVar (vm, fm, is, os) kv v = (M.add kv v vm, fm, is, os)
    let getVar (vm, _, _, _) kv = M.find kv vm
    let clearVars (_, fm, is, os) = (M.empty, fm, is, os)
    let setFunc (vm, fm, is, os) kf f = (vm, M.add kf f fm, is, os)
    let getFunc (_, fm, _, _) kf = M.find kf fm
    let takeInp (vm, fm, i::is, os) = (vm, fm, is, os), i
    let addOutp (vm, fm, is, os) o = (vm, fm, is, o::os)
    let getAllOutp (_, _, _, os) = List.rev os
    let updInpOutp (vm, fm, _, _) (_, _, is, os) = (vm, fm, is, os)
  end  


(* Interpreter for expressions *)
module Expr =
  struct

    open Expr

    (*returns new conf and value of expr*)
    let rec eval conf expr = 

      let eval' e = 
        let _, ret = eval conf e in
        ret
      in

      match expr with
      | Var   x             -> conf, Env.getVar conf x
      | Const z             -> conf, z
      | Add  (x, y)         -> conf, eval' x + eval' y
      | Sub  (x, y)         -> conf, eval' x - eval' y
      | Mul  (x, y)         -> conf, eval' x * eval' y
      | Div  (x, y)         -> conf, eval' x / eval' y
      | Rem  (x, y)         -> conf, eval' x mod eval' y
      | Or (x, y)           -> conf, if ((eval' x) == 0) && ((eval' y) == 0) then 0 else 1
      | And (x, y)          -> conf, if ((eval' x) == 0) || ((eval' y) == 0) then 0 else 1
      | Equal (x, y)        -> conf, if (eval' x) == (eval' y) then 1 else 0
      | NotEqual (x, y)     -> conf, if (eval' x) != (eval' y) then 1 else 0
      | Less (x, y)         -> conf, if (eval' x) < (eval' y) then 1 else 0
      | Greater (x, y)      -> conf, if (eval' x) > (eval' y) then 1 else 0
      | LessEqual (x, y)    -> conf, if (eval' x) <= (eval' y) then 1 else 0
      | GreaterEqual (x, y) -> conf, if (eval' x) >= (eval' y) then 1 else 0

      | FCall (name, args)  ->
         (*evaluate all arguments of function before call*)
         let conf, values = List.fold_left
            (fun (conf', values) arg -> 
              let conf'', ret = eval conf' arg in 
              (conf'', ret :: values))
            (conf, []) args
         in
         (*clear vars, get function body by name, invert args list, *)
         (*evaluate "funcWrapper (name, args, body) conf args" *)
         let conf', ret = (Env.getFunc conf name) (Env.clearVars conf) (List.rev values)
         in
         Env.updInpOutp conf conf', ret

  end


(* Interpreter for statements *)
module Stmt =
  struct

    open Stmt

    (*returns new conf and value of sequence*)
    let rec eval conf stmt =
      match stmt with
      | Skip                  -> conf, None

      | Assign (x, e)         -> 
          let conf, ret = Expr.eval conf e in
          Env.setVar conf x ret, None

      | Read x                ->
          let conf, i = Env.takeInp conf in
          Env.setVar conf x i, None

      | Write e               -> 
          let conf, ret = Expr.eval conf e in
          Env.addOutp conf ret, None

      | Seq (s1, s2)          -> 
          let conf', ret = eval conf s1 in
          eval conf' s2

      | If  (exp, seq1, seq2) -> 
          let conf, ret = Expr.eval conf exp in
          if ret != 0 
          then eval conf seq1 
          else eval conf seq2

      | While (exp, seq)      ->  
          (*recursive loop function*)
          let rec loop conf' exp' seq' = 
            let confExp, retExp = Expr.eval conf' exp' in
            let confSeq, retSeq = eval confExp seq' in
            if retExp != 0 
            then loop confSeq exp' seq'
            else confExp, None
          in
          loop conf exp seq

      | Until (seq, exp)      ->
          (*recursive loop function*)
          let rec loop conf' exp' seq' = 
            let confSeq, retSeq = eval conf' seq' in
            let confExp, retExp = Expr.eval confSeq exp' in
            if retExp == 0
            then loop confExp exp' seq'
            else confExp, None
          in
          loop conf exp seq

      | FCall (name, args) ->
         let conf, _ = Expr.eval conf (Language.Expr.FCall (name, args))
         in
         conf, None
         
      | Return e ->
         let conf, ret = Expr.eval conf e
         in
         conf, Some ret

  end

module Program =
  struct

    let eval input (fdefs, main) =

      (*function wrapper for execution in code of program*)
      (*funcWrapper conf args*)
      let funcWrapper (name, args, body) = fun conf values ->
        (*match args of function with given values*)
        let conf = List.fold_left
          (fun conf (a, v) -> Env.setVar conf a v)
          conf (List.combine args values)
        in
        let conf, Some ret = Stmt.eval conf body in
        conf, ret
      in

      (*create conf with input and with list of functions*)
      let conf = List.fold_left
        (fun conf ((name, _, _) as fdef) -> Env.setFunc conf name @@ funcWrapper fdef)
        (Env.init input) fdefs
      in

      (*evaluate main function*)
      let conf, _ = Stmt.eval conf main in
      Env.getAllOutp conf

  end

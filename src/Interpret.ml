open Language

(* Interpreter for expressions *)
module Expr =
  struct

    open Expr

    let of_binop op =
		let bti = function true -> 1 | _ -> 0 in
		let (&) f g = fun x y -> f (g x y) in
		List.assoc op
			[ "+", ( + );
			  "-", ( - );
			  "*", ( * );
			  "/", ( / );
			  "%", ( mod );
			  "<",  bti & (<);
			  "<=", bti & (<=);
			  ">",  bti & (>);
			  ">=", bti & (>=);
			  "==", bti & (==);
			  "!=", bti & (<>);
        "&&", (fun x y -> if x <> 0 && y <> 0 then 1 else 0);
        "!!", (fun x y -> if x <> 0 || y <> 0 then 1 else 0)
			]

      let rec eval fenv expr ((st, i, o) as conf) =
        match expr with
        | Var   x          -> (conf, st x)
        | Const z          -> (conf, z)
        | Binop (op, x, y) ->
          let (confx, vx) = eval fenv x conf  in
          let (confy, vy) = eval fenv y confx in
          confy, of_binop op vx vy
        | Call (f, args) ->
          let conf', args' =
            List.fold_left
              ( fun (conf, args) arg ->
                  let conf', varg = eval fenv arg conf in
                  conf', varg :: args
              )
              (conf, []) args
        in
        (fenv f) conf' (List.rev args')

  end

(* Interpreter for statements *)
module Stmt =
  struct

    open Stmt

    (* State update primitive *)
    let update st x v = fun y -> if y = x then v else st y

    let rec eval fenv stmt ((st, input, output) as conf) =
      match stmt with
      | Skip           -> conf, `Continue
      | Call (f, args) ->
          let conf', _ = Expr.eval fenv (Language.Expr.Call (f, args)) conf in
          conf', `Continue

      | Return e       ->
          let conf', v = Expr.eval fenv e conf in
          conf', `Return v

      | Assign (x, e)  ->
        let ((st', i', o'), ve) = Expr.eval fenv e conf in
        (update st' x ve, i', o'), `Continue

      | Read    x      ->
	       let z :: input' = input in
	       (update st x z, input', output), `Continue

      | Write   e      ->
        let ((st', i', o'), ve) = Expr.eval fenv e conf in
        (st', i', o' @ [ve]), `Continue

      | If (e, s1, s2) ->
        let (conf', ve) = Expr.eval fenv e conf in
          eval fenv (if ve = 1 then s1 else s2) conf'
      | While (e, s)   ->
        let (conf', ve) = Expr.eval fenv e conf in
        if ve = 1 then match eval fenv s conf' with
                  | (conf', `Return _) as r -> r
                  | (conf', _)              -> eval fenv stmt conf'
                  else conf', `Continue
      | Seq (s1, s2)   ->
      let (conf', r) as result = eval fenv s1 conf in
      (match r with
      | `Continue -> eval fenv s2 conf'
      | `Return _ -> result
      )

  end

module Program =
  struct
    let eval (fs, stmt) input =
      let rec fenv f =
        let (fargs, stmt) = List.assoc f fs in
        (fun ((st, i, o) as conf) args ->
          let st'=
            let l =  List.combine fargs args in
            (fun x -> List.assoc x l)
          in
          let (_, i', o'), r =  Stmt.eval fenv stmt (st', i, o) in
          (st, i', o'), (match r with `Return v -> v | _ -> invalid_arg "")
        )
      in
      let (_, _, output) =
	       fst(Stmt.eval fenv stmt ((fun _ -> failwith "undefined variable"), input, []))
      in
      output

  end

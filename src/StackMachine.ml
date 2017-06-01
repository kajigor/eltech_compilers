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
| OR
| AND
| EQL
| NEQL
| LEQL
| MEQL
| MORE
| LESS
| SUB
| DIV
| MOD
| LABEL of string
| JMP   of string 
| JNZ   of string
| JZ    of string

end

module Program =
struct

type t = Instr.t list

end


module Interpret =
struct

open Instr
open Interpret.Stmt

let rec goto prg label = 
  let i::prg' = prg in
  if(i = label) 
  then prg'
else goto prg' label

let run prg input =
  let prg_copy = prg in 
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
    | PUSH n -> (prg', n :: stack, st, input, output)
    | LD   x -> (prg', st x :: stack, st, input, output)
    | ST   x -> let z :: stack' = stack in
      (prg', stack', update st x z, input, output)
    | LABEL  _ -> (prg', stack, st, input, output)
    | JNZ  l -> let x :: stack' = stack in
      if x <> 0 then (goto prg_copy (LABEL l), stack', st, input, output)
      else (prg', stack', st, input, output)
    | JZ   l -> let x :: stack' = stack in
      if x == 0 then (goto prg_copy (LABEL l), stack', st, input, output)
      else (prg', stack', st, input, output)
    | JMP  l -> (goto prg_copy (LABEL l), stack, st, input, output)

    | _ -> let y :: x :: stack' = stack in
    (prg', (match i with
      | ADD	  -> ( + )
      | MUL	  -> ( * )
      | OR	  -> ( fun x y -> if (x == 0) && (y == 0) then 0 else 1 )
      | AND	  -> ( fun x y -> if (x == 0) || (y == 0) then 0 else 1 )
      | EQL	  -> ( fun x y -> if (x == y) then 1 else 0 )
      | NEQL	-> ( fun x y -> if (x != y) then 1 else 0 )
      | LEQL	-> ( fun x y -> if (x <= y) then 1 else 0 )
      | MEQL	-> ( fun x y -> if (x >= y) then 1 else 0 )
      | MORE	-> ( fun x y -> if (x > y) then 1 else 0 )
      | LESS	-> ( fun x y -> if (x < y) then 1 else 0 )
      | SUB	  -> ( - )
      | DIV	  -> ( / )
      | MOD	  -> ( mod )
      )
    x y :: stack', st, input, output
    )
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

let label = ref 0
let get_next_label() =
  label:= !label + 1;
  ".L"^string_of_int !label

module Expr =
struct

open Language.Expr

let rec compile = function 
| Var    x     -> [LD   x]
| Const  n     -> [PUSH n]
| Add   (x, y) -> (compile x) @ (compile y) @ [ADD]
| Mul   (x, y) -> (compile x) @ (compile y) @ [MUL]
| Or	  (x, y) -> (compile x) @ (compile y) @ [OR]
| And	  (x, y) -> (compile x) @ (compile y) @ [AND]
| Eql	  (x, y) -> (compile x) @ (compile y) @ [EQL]
| NEql	(x, y) -> (compile x) @ (compile y) @ [NEQL]
| LEql	(x, y) -> (compile x) @ (compile y) @ [LEQL]
| MEql	(x, y) -> (compile x) @ (compile y) @ [MEQL]
| More	(x, y) -> (compile x) @ (compile y) @ [MORE]
| Less	(x, y) -> (compile x) @ (compile y) @ [LESS]
| Sub	  (x, y) -> (compile x) @ (compile y) @ [SUB]
| Div	  (x, y) -> (compile x) @ (compile y) @ [DIV]
| Mod	  (x, y) -> (compile x) @ (compile y) @ [MOD]

end

module Stmt =
struct

open Language.Stmt

let rec compile = function
| Skip               -> []
| Assign (x, e)      -> Expr.compile e @ [ST x]
| Read    x          -> [READ; ST x]
| Write   e          -> Expr.compile e @ [WRITE]
| Seq    (l, r)      -> compile l @ compile r
| If     (e, s1, s2) -> let label1 = get_next_label() in
  let label2 = get_next_label() in
  Expr.compile e @
  [JZ label1] @
  compile s1 @
  [JMP label2; LABEL label1] @
  compile s2 @
  [LABEL label2]

| While  (e, s)      -> let label1 = get_next_label() in
  let label2 = get_next_label() in
  [JMP label2; LABEL label1] @
  compile s @
  [LABEL label2] @
  Expr.compile e @
  [JNZ label1]
end

module Program =
struct

let compile = Stmt.compile

end

end
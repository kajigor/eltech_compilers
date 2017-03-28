open Language
open Expr
open Stmt

let inc x = x+1

let ( !  ) x   = Var   x
let const  n   = Const n
let ( +  ) x y = Add  (x, y)
let ( *  ) x y = Mul  (x, y)

let read  x  = Read  x
let write e  = Write e
let (:=) x e = Assign (x, e)
let skip     = Skip
let (|>) l r = Seq (l, r)

let parse filename = 
  ("x" := const 10)|>
  ("z" := const 1 * (const 2 * (const 3 * (const 4 * (const 5 * (const 6 * (const 7 * (const 8 * (const 9 * !"x"))))))))) |>
  write !"z"

let _ =
  match Sys.argv with
  | [|_; filename|] ->
      let basename = Filename.chop_suffix filename ".expr" in      
      let text = X86.compile (parse filename) in
      let asm  = basename ^ ".s" in
      let ouch = open_out asm   in
      Printf.fprintf ouch "%s\n" text;
      close_out ouch;
      let runtime = try Sys.getenv "RUNTIME" with _ -> "../runtime" in
      Sys.command (Printf.sprintf "gcc -m32 -o %s %s/runtime.o %s.s" basename runtime basename)

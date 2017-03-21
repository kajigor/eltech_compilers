open Expr
open GT

(* EDSL = Embedded Domain-Specific Language
          Встроенный предметно-ориентированный язык
   Deep Embedding
*)

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

let p =
  read "x" |>
  read "y" |>
  ("z" := !"x" * !"y" + const 1) |>
  write !"z"

let _ =
  Printf.printf "%s\n" (show(list) (show(int)) @@ run p [10; 20]);
  Printf.printf "%s\n" (show(list) (show(int)) @@ srun (comp p) [10; 20])

  let outf = open_out "asm.s" in
  Printf.fprintf outf "%s\n" (X86.toAsm p);
  close_out outf;
  Printf.printf "-------------\n";
  Printf.printf "GNU assembler source in asm.s file\nUse gcc asm.s to compile\n";
  Printf.printf "-------------\n"

(*
let gen n =
  let rec gen_read n i =
    if i > n 
    then skip
    else read (Printf.sprintf "x%d" i) |> gen_read n (inc i)
  in
  let rec gensum n i =
    if i > n 
    then Const 0
    else !(Printf.sprintf "x%d" i) + gensum n (inc i)
  in
  gen_read n 0 |>
  write @@ gensum n 0
*)

open Language
open Expr
open Stmt
open Ostap

let parse filename = 
  let s = Util.read filename in
  Util.parse 
    (object 
       inherit Matcher.t s 
       inherit Util.Lexers.ident ["read"; "write"; "skip"] s
       inherit Util.Lexers.decimal s
       inherit Util.Lexers.skip [
         Matcher.Skip.whitespaces " \t\n";
	 Matcher.Skip.lineComment "--";
	 Matcher.Skip.nestedComment "(*" "*)"
       ] s
    end)
    (ostap (!(Stmt.parse) -EOF))

let main =
  try
    let interpret  = Sys.argv.(1) = "-i"  in
    let stack      = Sys.argv.(1) = "-s"  in
    let to_compile = not (interpret || stack) in
    let infile     = Sys.argv.(if not to_compile then 2 else 1) in
    match parse infile with
    | `Ok prog ->
      if to_compile
      then 
        let basename = Filename.chop_suffix infile ".expr" in
        ignore @@ X86.build prog basename
      else 
	let rec read acc =
	  try
	    let r = read_int () in
	    Printf.printf "> ";
	    read (acc @ [r]) 
          with End_of_file -> acc
	in
	let input = read [] in	
	let output = 
	  if interpret 
	  then Interpret.Program.eval prog input 
	  else StackMachine.Interpret.run (StackMachine.Compile.Program.compile prog) input
	in
	List.iter (fun i -> Printf.printf "%d\n" i) output
    | `Fail er -> Printf.eprintf "Syntax error: %s\n" er
  with Invalid_argument _ ->
    Printf.printf "Usage: rc [-i] <input file.expr>\n"


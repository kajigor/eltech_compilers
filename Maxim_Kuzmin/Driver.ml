open Language
open Expr
open Stmt
open Ostap
open Ostap.Util
open GT

let rec expr_parser s =                                                                                    
	expr id
	[|                                                                                            
		`Lefta , [ostap ("+"), (fun x y -> Add (x, y))]; 
		`Lefta , [ostap ("*"), (fun x y -> Mul (x, y))]  
	|]                                                                                            
	expr'                                                                                       
	s                                                                                             
	and ostap (expr':  
		n:DECIMAL {Const n}  
		| e:IDENT   {Var e}
		| -"(" expr_parser -")")  

ostap (
  simp: x:IDENT ":=" e:expr_parser     {Assign (x, e)}
      | %"read" "(" x:IDENT ")" {Read x}
      | %"write" "(" e:expr_parser ")" {Write e}
      | %"skip"                 {Skip};
      
  stmt: s:simp ";" d:stmt {Seq (s,d)}
      | simp 
)

let parse filename = 
  let s = Util.read filename in
  Util.parse 
    (object 
       inherit Matcher.t s 
       inherit Util.Lexers.ident ["read"; "write"; "skip"] s
       inherit Util.Lexers.decimal s
       inherit Util.Lexers.skip [
         Matcher.Skip.whitespaces " \t\n"
       ] s
    end)
    (ostap (stmt -EOF))
    
let _ =
  match Sys.argv with
  | [|_; filename|] ->
      match parse filename with
      | `Ok stmt -> 
        let basename = Filename.chop_suffix filename ".expr" in      
        let text = X86.compile stmt in
        Printf.printf "%s\n" (show (Stmt.t) stmt);
        let asm  = basename ^ ".s" in
        let ouch = open_out asm   in
      Printf.fprintf ouch "%s\n" text;
      close_out ouch;
        let runtime = try Sys.getenv "RUNTIME" with _ -> "../runtime" in
        ignore @@ Sys.command (Printf.sprintf "gcc -m32 -o %s %s/runtime.o %s.s" basename runtime basename)
      | `Fail e -> Printf.eprintf "Parsing error: %s\n" e

open Language
open Expr
open Stmt
open Ostap
open Ostap.Util
open GT


let rec expr_parse s =                                                                                    
	expr id
	[|                                                                                            
		`Nona ,  [ostap ("||"), (fun x y -> Or (x, y)); 
                  ostap ("!!"), (fun x y -> Or (x, y));];  
                    
        `Nona ,  [ostap ("&&"), (fun x y -> And (x, y))]; 
        
        `Nona ,  [ostap ("=="), (fun x y -> Equal (x, y)); 
                  ostap ("!="), (fun x y -> NotEqual (x, y));
                  ostap ("<="), (fun x y -> LessEqual (x, y));
                  ostap (">="), (fun x y -> MoreEqual (x, y));
                  ostap ("<"), (fun x y -> Less (x, y));
                  ostap (">"), (fun x y -> More (x, y))];

        `Lefta , [ostap ("+"), (fun x y -> Add (x, y));
                  ostap ("-"), (fun x y -> Sub (x, y))]; 

        `Lefta , [ostap ("*"), (fun x y -> Mul (x, y));
                  ostap ("/"), (fun x y -> Div (x, y));
                  ostap ("%"), (fun x y -> Rem (x, y))] 
	|]                                                                                            
	primary                                                                                       
	s                                                                                             
	and ostap (primary:  
		n:DECIMAL {Const n}  
		| e:IDENT   {Var e}
		| -"(" expr_parse -")") 
		
ostap (
  simp: x:IDENT ":=" e:expr_parse     {Assign (x, e)}
      | %"read" "(" x:IDENT ")" {Read x}
      | %"write" "(" e:expr_parse ")" {Write e}
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

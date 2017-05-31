open Language
open Expr
open Stmt
open Ostap
open Ostap.Util



let rec expr_parse s =                                                                                    
	expr id
	[|                                                                                            
	`Nona ,  [ostap ("||"), (fun x y -> Or (x, y)); 
                  ostap ("!!"), (fun x y -> Or (x, y))];  
                    
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
      | %"skip"                 {Skip}
      | %"if" exp:expr_parse %"then" seq1:stmt seq2:elsePart?
          %"fi"   {If(exp, seq1, match seq2 with None -> Skip | Some seq2 -> seq2)}
      | %"while" exp:expr_parse
          "do" seq:stmt %"od"      {While(exp, seq)}
      | %"for" s1:stmt "," e:expr_parse "," s2:stmt
          %"do" s:stmt %"od"       {Seq (s1, While (e, Seq (s, s2)))}
      | %"repeat" seq:stmt 
          "until" exp:expr_parse             {Until (seq, exp)};
		  
  elsePart: 
      %"else" stmt
      | %"elif" exp:expr_parse %"then" seq1:stmt seq2:elsePart?
          {If(exp,seq1, match seq2 with None -> Skip | Some seq2 -> seq2)};
      
  stmt: s:simp ";" d:stmt {Seq (s,d)}
      | simp 
)

let parse filename = 
  let s = Util.read filename in
  Util.parse 
    (object 
       inherit Matcher.t s 
       inherit Util.Lexers.ident ["read"; "write"; "skip"; "if"; "then"; "else"; "fi"; "while"; "do"; "od"; "for"; "elif"; "repeat"; "until"] s
       inherit Util.Lexers.decimal s
       inherit Util.Lexers.skip [
         Matcher.Skip.whitespaces " \t\n"
       ] s
    end)
    (ostap (stmt -EOF))
    
let _ =
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
        Printf.printf "Usage: rc [-i | -s] <input file.expr>\n";
Printf.printf "Example: cat test001.input | .././rc.native -s test001.expr\n"

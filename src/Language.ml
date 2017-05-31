open Ostap.Util
(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var   	    of string
    | Const 	    of int
    | Add   	    of t * t
    | Sub   	    of t * t
    | Mul   	    of t * t
    | Div   	    of t * t
    | Divd  	    of t * t
    | Or    	    of t * t
    | And   	    of t * t	
    | Equal         of t * t
    | NotEqual      of t * t
    | Less          of t * t
    | Greater       of t * t
    | LessEqual     of t * t
    | GreaterEqual  of t * t

   let rec parse s =                                                                                    
      expr id
      [|     
        `Nona ,  [ostap ("||"), (fun x y -> Or (x, y)); 
                  ostap ("!!"), (fun x y -> Or (x, y));];  
                    
        `Nona ,  [ostap ("&&"), (fun x y -> And (x, y))]; 
	
	`Nona ,  [ostap ("=="), (fun x y -> Equal (x, y)); 
                  ostap ("!="), (fun x y -> NotEqual (x, y));
                  ostap ("<="), (fun x y -> LessEqual (x, y));
                  ostap (">="), (fun x y -> GreaterEqual (x, y));
                  ostap ("<"), (fun x y ->  Less (x, y));
                  ostap (">"), (fun x y ->  Greater (x, y))];

        `Lefta , [ostap ("+"), (fun x y -> Add (x, y));
                  ostap ("-"), (fun x y -> Sub (x, y))]; 

        `Lefta , [ostap ("*"), (fun x y -> Mul (x, y));
                  ostap ("/"), (fun x y -> Div (x, y));
                  ostap ("%"), (fun x y -> Divd (x, y))]
      |]                                                                                            
      expr' s                                                                                             
      and 
      ostap (
        expr':
          n:DECIMAL                 {Const n}  
          | e:IDENT                 {Var e}
          | -"(" parse -")") 


  end

(* AST statements/commands *)
module Stmt =
  struct

    type t =
    | Skip
    | Assign of string * Expr.t
    | Read   of string
    | Write  of Expr.t
    | Seq    of t * t
    | If     of Expr.t * t * t
    | While  of Expr.t * t
    | Until  of t * Expr.t

    let expr = Expr.parse

    ostap (
      simp: x:IDENT ":=" e:expr  {Assign (x, e)}
      | %"read"  "(" x:IDENT ")" {Read x}
      | %"write" "(" e:expr  ")" {Write e}
      | %"skip"                  {Skip}
      | %"if" exp:expr %"then" pt1:parse pt2:elsePart?
        %"fi"   {If(exp, pt1, match pt2 with None -> Skip | Some pt2 -> pt2)}
      | %"while" exp:expr
          "do" pt:parse %"od"      {While(exp, pt)}
      | %"for" s1:parse "," e:expr "," s2:parse
          %"do" s:parse %"od"       {Seq (s1, While (e, Seq (s, s2)))}
      | %"repeat" pt:parse 
          "until" exp:expr             {Until (pt, exp)};

      elsePart: 
        %"else" parse
        | %"elif" exp:expr %"then" pt1:parse pt2:elsePart?
          {If(exp,pt1, match pt2 with None -> Skip | Some pt2 -> pt2)};
      parse: s:simp ";" d:parse {Seq (s,d)} | simp 
    )

  end

module Program =
  struct

    type t = Stmt.t

    let parse = Stmt.parse

  end


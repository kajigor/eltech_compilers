open Ostap.Util
(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var   of string
    | Const of int
    | Bin   of string * t * t

    let rec expr_parse s =                                                                                    
      expr id
      [|     
		(*Bool 0/1*)
        `Nona , [ostap ("!!"), (fun x y -> Bin ("||", x, y))];
		`Nona , [ostap ("&&"), (fun x y -> Bin ("&&", x, y))];     
		(*Bool Arith*)
        `Nona, [ostap ("=="), (fun x y -> Bin ("==", x, y)); 
				 ostap ("!="), (fun x y -> Bin ("!=", x, y)); 
				 ostap ("<="), (fun x y -> Bin ("<=", x, y)); 
				 ostap (">="), (fun x y -> Bin (">=", x, y)); 
				 ostap ("<"),  (fun x y  -> Bin ("<", x, y)); 
				 ostap (">"),  (fun x y  -> Bin (">", x, y))]; 
		(*Arith*)
        `Lefta, [ostap ("+"),  (fun x y  -> Bin ("+", x, y)); 
				 ostap ("-"),  (fun x y  -> Bin ("-", x, y))];
				 
		`Lefta, [ostap ("*"),  (fun x y  -> Bin ("*", x, y));
				 ostap ("/"),  (fun x y  -> Bin ("/", x, y));
				 ostap ("%"),  (fun x y  -> Bin ("%", x, y))];
		
      |]                                                                                            
      expr' s                                                                                            
      and 
      ostap (
        expr':
          n:DECIMAL                 {Const n}  
          | e:IDENT                 {Var e}
          | -"(" expr_parse -")") 

		
	let operation_to_func f = match f with 
	| "+" -> fun x y -> x + y
	| "*" -> fun x y -> x * y
	| "-" -> fun x y -> x - y				
	| "/" -> fun x y -> x / y	
	| "%" -> fun x y -> x mod y
	(* Bool expressions with arith. operands*)
	| "==" -> fun x y -> if x == y then 1 else 0
	| "!=" -> fun x y -> if x != y then 1 else 0
	| ">=" -> fun x y -> if x >= y then 1 else 0
	| ">" -> fun x y -> if x > y then 1 else 0
	| "<" -> fun x y -> if x < y then 1 else 0
	| "<=" -> fun x y -> if x <=y then 1 else 0
	(* Bool expressions with 0/1 operands*)
	| "&&" -> fun x y -> if (x != 0 && y != 0) then 1 else 0
	| "||" -> fun x y -> if (x == 0 && y == 0) then 0 else 1
	| f -> failwith (Printf.sprintf "Fail on operation %s" f)
  end

(* AST statements/commands *)
module Stmt =
  struct

    type t =
    | Skip
    | Assign  of string * Expr.t
    | Read    of string
    | Write   of Expr.t
    | Seq     of t * t
	| IfElse  of Expr.t * t * t
	| WhileDo of Expr.t * t
	| RepeatUntil of t * Expr.t
	
    let expr = Expr.expr_parse

    ostap (
      simp: x:IDENT ":=" e:expr  													{Assign (x, e)}
      | %"read"  "(" x:IDENT ")" 													{Read x}
      | %"write" "(" e:expr  ")" 													{Write e}
      | %"skip"                  													{Skip}
	  | %"if"     e: expr "then"   s1: parse "fi"									{IfElse (e,s1,Skip)}
      | %"if"     e: expr "then"   s1: parse "else" s2: parse "fi"					{IfElse (e,s1,s2)}
	  | %"while"  e: expr "do"     s:  parse "od"									{WhileDo (e,s)}
	  | %"for"    a: simp ","      e:  expr  ","    ai: simp  "do" s: parse  "od"	{Seq (a, WhileDo (e,Seq(s,ai)))}
	  | %"repeat" s: parse "until" e: expr    										{RepeatUntil (s,e)};
	  
      parse: 
	  s:simp ";" d:parse 		 {Seq (s,d)} 
	  | simp 
    )

  end

module Program =
  struct

    type t = Stmt.t

    let parse = Stmt.parse

  end


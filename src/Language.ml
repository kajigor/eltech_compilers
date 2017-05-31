open Ostap.Util

(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var           of string
    | Const         of int
    | BinOp         of string * t * t

    let rec expr_parser s =                                                                                    
      expr id
      [|     
        `Nona ,  [ostap ("!!"), (fun x y -> BinOp ("!!", x, y))];  

	`Nona ,  [ostap ("&&"), (fun x y -> BinOp ("&&", x, y))];  
                    
        `Nona ,  [ostap ("=="), (fun x y -> BinOp ("==", x, y)); 
                  ostap ("!="), (fun x y -> BinOp ("!=", x, y));
		  ostap ("<="), (fun x y -> BinOp ("<=", x, y));
                  ostap (">="), (fun x y -> BinOp (">=", x, y));
                  ostap ("<"),  (fun x y -> BinOp ("<",  x, y));
                  ostap (">"),  (fun x y -> BinOp (">",  x, y))];

        `Lefta , [ostap ("+"), (fun x y -> BinOp ("+", x, y));
                  ostap ("-"), (fun x y -> BinOp ("-", x, y))]; 

        `Lefta , [ostap ("*"), (fun x y -> BinOp ("*", x, y));
                  ostap ("/"), (fun x y -> BinOp ("/", x, y));
                  ostap ("%"), (fun x y -> BinOp ("%", x, y))]
      |]                                                                                            
      expr' s                                                                                             
      and 
      ostap (
        expr':
          n:DECIMAL                 {Const n}  
          | e:IDENT                 {Var e}
          | -"(" expr_parser -")") 

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
    | If      of Expr.t * t * t
    | While   of Expr.t * t
    | Repeat  of t * Expr.t

    let expr = Expr.expr_parser

    ostap (
      statement:
        x:IDENT      ":=" e:expr             {Assign (x, e)}
        | %"read"    "(" x:IDENT ")"         {Read x}
        | %"write"   "(" e:expr ")"          {Write e}
        | %"skip"                            {Skip}
        | %"if"      e:expr %"then" seq:sequence seq':else_stmt?
          %"fi"   		             {If(e, seq, match seq' with None -> Skip | Some seq' -> seq')}
        | %"while"   e:expr
          "do"       seq:sequence %"od"      {While(e, seq)}
        | %"for"     seq:sequence "," e:expr "," seq':sequence
          %"do"      s:sequence %"od"        {Seq (seq, While (e, Seq (s, seq')))}
        | %"repeat"  seq:sequence 
          "until"    e:expr                  {Repeat (seq, e)};

      else_stmt: 
        %"else" sequence
        | %"elif" e:expr %"then" seq:sequence seq':else_stmt?
          {If(e,seq, match seq' with None -> Skip | Some seq' -> seq')};

      sequence:
        s:statement ";" d:sequence    {Seq (s,d)}
        | statement
    )

  end

module Program =
  struct

    type t = Stmt.t

    let parse = Stmt.sequence

  end


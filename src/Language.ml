open Ostap.Util

(* AST for expressions *)
module Expr =
  struct

    type t =
    | Var           of string
    | Const         of int
    | Add           of t * t
    | Sub           of t * t
    | Mul           of t * t
    | Div           of t * t
    | Rem           of t * t
    | Or            of t * t
    | And           of t * t
    | Equal         of t * t
    | NotEqual      of t * t
    | Less          of t * t
    | Greater       of t * t
    | LessEqual     of t * t
    | GreaterEqual  of t * t

    let rec expr_parser s =                                                                                    
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
                  ostap ("%"), (fun x y -> Rem (x, y))]
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
    | Assign of string * Expr.t
    | Read   of string
    | Write  of Expr.t
    | Seq    of t * t
    | If     of Expr.t * t * t
    | While  of Expr.t * t
    | Until  of t * Expr.t

    let expr = Expr.expr_parser

    ostap (
      statement:
        x:IDENT ":=" e:expr           {Assign (x, e)}
        | %"read" "(" x:IDENT ")"     {Read x}
        | %"write" "(" e:expr ")"     {Write e}
        | %"skip"                     {Skip}
        | %"if" exp:expr %"then" seq1:sequence seq2:elsePart?
          %"fi"   {If(exp, seq1, match seq2 with None -> Skip | Some seq2 -> seq2)}
        | %"while" exp:expr
          "do" seq:sequence %"od"      {While(exp, seq)}
        | %"for" s1:sequence "," e:expr "," s2:sequence
          %"do" s:sequence %"od"       {Seq (s1, While (e, Seq (s, s2)))}
        | %"repeat" seq:sequence 
          "until" exp:expr             {Until (seq, exp)};

      elsePart: 
        %"else" sequence
        | %"elif" exp:expr %"then" seq1:sequence seq2:elsePart?
          {If(exp,seq1, match seq2 with None -> Skip | Some seq2 -> seq2)};

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


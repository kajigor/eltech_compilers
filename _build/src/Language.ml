open Ostap.Util

module Expr =
  struct

    type t =
    | Var             of string
    | Const           of int
    | Add             of t * t
    | Mul             of t * t 
    | Sub             of t * t 
    | Div             of t * t 
    | Mod             of t * t 
    | And             of t * t 
    | Or              of t * t 
    | Equals          of t * t 
    | NotEquals       of t * t 
    | Greater         of t * t 
    | Less            of t * t 
    | GreaterEquals   of t * t 
    | LessEquals      of t * t 

    let rec parse s =                                                                                    
      expr id
      [|     
        `Nona ,  [ostap ("||"), (fun x y -> Or (x, y)); ];  
        `Nona ,  [ostap ("&&"), (fun x y -> And (x, y))]; 
        `Nona ,  [ostap ("=="), (fun x y -> Equals (x, y)); 
                  ostap ("!="), (fun x y -> NotEquals (x, y));
				  ostap (">"),  (fun x y -> Greater (x, y));
                  ostap ("<"),  (fun x y -> Less (x, y))
                  ostap (">="), (fun x y -> GreaterEquals (x, y));
                  ostap ("<="), (fun x y -> LessEquals (x, y));];

        `Lefta , [ostap ("+"),  (fun x y -> Add (x, y));
                  ostap ("-"),  (fun x y -> Sub (x, y))]; 

        `Lefta , [ostap ("*"),  (fun x y -> Mul (x, y));
                  ostap ("/"),  (fun x y -> Div (x, y));
                  ostap ("%"),  (fun x y -> Mod (x, y))]
      |]                                                                                            
      expr' s
    and 
      ostap (
        expr': 
              n:DECIMAL {Const n}  
            | e:IDENT   {Var e}
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
      | %"skip"                  {Skip};
      | %"if"      e:expr %"then" then_part:parse else_part:else_part_def?
        %"fi"      {If (exp, then_part, match else_part with None -> Skip | Some else_part -> else_part)}
      | %"for" s1:parse "," e:expr "," s2:parse
           %"do" s:parse %"od"   {Seq (s1, While (e, Seq (s, s2)))}
      | %"while" exp:expr 
              "do" value:parse %"od" {While (expr, value)}
      | %"repeat" value:parse
         "until" expr:expr        {Until (value, expr)};
      else_part_def :
        %"else" parse
        | %"elif" expr:expr %"then" then_part:parse else_part:else_part_def?
          {If (expr, then_part, match else_part with None -> Skip | Some else_part -> else_part)};
      parse: s:simp ";" d:parse {Seq (s,d)} | simp 
    )

  end

module Program =
  struct

    type t = Stmt.t

    let parse = Stmt.parse

  end


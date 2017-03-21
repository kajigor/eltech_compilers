all: Driver.cmo
	ocamlc -rectypes -o Driver -I `ocamlfind -query GT` GT.cma Expr.cmo Driver.cmo

Expr.cmo: Expr.ml
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` GT.cma $<

Driver.cmo: Expr.cmo Driver.ml
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` GT.cma Driver.ml

clean:
	rm -Rf *~ *.cmo *.cmi Driver

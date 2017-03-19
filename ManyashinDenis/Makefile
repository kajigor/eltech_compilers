all: Main.cmo
	ocamlc -rectypes -o Main -I `ocamlfind -query GT` GT.cma Main.cmo

Main.cmo: Main.ml
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` GT.cma Main.ml

clean:
	rm -Rf *~ *.cmo *.cmi Main

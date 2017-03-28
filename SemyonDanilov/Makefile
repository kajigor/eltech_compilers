all: Driver.cmo
	ocamlc -rectypes -o compiler -I `ocamlfind -query GT` GT.cma Language.cmo Interpret.cmo StackMachine.cmo X86.cmo Driver.cmo

Language.cmo: Language.ml
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` GT.cma $<

Interpret.cmo: Interpret.ml Language.cmo
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` GT.cma $<

StackMachine.cmo: StackMachine.ml Language.cmo Interpret.cmo
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` GT.cma $<

X86.cmo: X86.ml StackMachine.cmo
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` GT.cma $<

Driver.cmo: Driver.ml StackMachine.cmo X86.cmo Interpret.cmo
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` GT.cma Driver.ml

clean:
	rm -Rf *~ *.cmo Driver

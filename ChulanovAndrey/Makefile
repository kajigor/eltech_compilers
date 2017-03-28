<<<<<<< HEAD
MKDIR ?= mkdir -vp
CP    ?= cp

OB=ocamlbuild -cflag -g -no-hygiene -use-ocamlfind -plugin-tag "package(str)" -classic-display
ifdef OBV
OB += -verbose 6
endif

BYTE_TARGETS=src/rc.byte 
NATIVE_TARGETS=src/rc.native

.PHONY: all clean runtime

.DEFAULT_GOAL: all

all: main runtime

runtime:
	cd runtime && make all && cd ..

main:
	$(OB) -Is src $(BYTE_TARGETS) $(NATIVE_TARGETS)

clean: 
	cd runtime && make clean && cd .. && $(RM) -r _build *.log  *.native *.byte
=======
all: Driver.cmo
	ocamlc -rectypes -o compiler -I `ocamlfind -query GT` -I `ocamlfind -query ostap` -I `ocamlfind -query re.str` re.cma re_emacs.cma re_str.cma GT.cma ostap.cmo Language.cmo Interpret.cmo StackMachine.cmo X86.cmo Driver.cmo

Language.cmo: Language.ml
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -I `ocamlfind -query ostap` pa_ostap.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` -I `ocamlfind -query ostap` GT.cma $<

Interpret.cmo: Interpret.ml Language.cmo
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -I `ocamlfind -query ostap` pa_ostap.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` -I `ocamlfind -query ostap` GT.cma $<

StackMachine.cmo: StackMachine.ml Language.cmo Interpret.cmo
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -I `ocamlfind -query ostap` pa_ostap.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` -I `ocamlfind -query ostap` GT.cma $<

X86.cmo: X86.ml StackMachine.cmo
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -I `ocamlfind -query ostap` pa_ostap.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` -I `ocamlfind -query ostap` GT.cma $<

Driver.cmo: Driver.ml StackMachine.cmo X86.cmo Interpret.cmo
	ocamlc -rectypes -c -pp "camlp5o -I `ocamlfind -query GT.syntax.all` pa_gt.cmo -I `ocamlfind -query ostap` pa_ostap.cmo -L `ocamlfind -query GT.syntax.all`" -I `ocamlfind -query GT` -I `ocamlfind -query ostap` GT.cma Driver.ml

clean:
	rm -Rf *~ *.cmo compiler
>>>>>>> HW2

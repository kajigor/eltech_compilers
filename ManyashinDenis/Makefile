MKDIR ?= mkdir -vp
CP    ?= cp

OB=ocamlbuild -cflag -g -no-hygiene -use-ocamlfind -plugin-tag "package(src)" -classic-display
ifdef OBV
OB += -verbose 6
endif

BYTE_TARGETS=src/rc.byte 
NATIVE_TARGETS=src/rc.native

.PHONY: all clean runtime

.DEFAULT_GOAL: all

all: compile runtime

runtime:
	cd runtime && make all && cd ..

main:
	$(OB) -Is src $(BYTE_TARGETS) $(NATIVE_TARGETS)

compile:
	$(OB) -Is ManyashinDenis $(BYTE_TARGETS) $(NATIVE_TARGETS)

clean: 
	cd runtime && make clean && cd .. && $(RM) -r _build *.log  *.native *.byte

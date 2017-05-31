TESTS=test001 test002 test003 test004 test005 test006 test007 test008 test012 test013


.PHONY: check $(TESTS) 

check: $(TESTS) 

$(TESTS): %: %.expr
	../rc.native     $< && cat $@.input | ./$@ > $@.log && diff $@.log orig/$@.log
	cat $@.input | ../rc.native -i $< > $@.log && diff $@.log orig/$@.log
	cat $@.input | ../rc.native -s $< > $@.log && diff $@.log orig/$@.log

clean:
	rm -f test*.log *.s *~ $(TESTS)

# CSCI 2021 Project 1 Makefile
AN = p1
CLASS = 2021

# url and files for sanity checks
URL = https://www-users.cse.umn.edu/~kauffman/2021
CHECK_FILES = \
	demo_test_hash_init.c hashset_demo.txt hashset.h test_hashset.org \
	stock_demo.c stock.h stock_main.c test_stock1.org test_stock2.org test_stock_funcs.c \
	data/alphabet_expand.hashset data/alphabet.hashset data/alphabet.script data/hash_demo.script data/hashset_demo.script data/new.hashset data/rm.hashset data/stock-1only.txt data/stock-2only.txt data/stock-3only.txt data/stock-ascending.txt data/stock-descending.txt data/stock-empty.txt data/stock-FB-08-02-2021.txt data/stock-GOOG-08-02-2021.txt data/stock-jagged.txt data/stock-min-after-max.txt data/stock-TSLA-08-02-2021.txt data/stock-TSLA-08-12-2021.txt data/stock-valley.txt \
	Makefile testy

# basic parameters used pervasively
CFLAGS = -Wall -Wno-comment -Werror -g 
CC     = gcc $(CFLAGS)
SHELL  = /bin/bash
CWD    = $(shell pwd | sed 's/.*\///g')

PROGRAMS = \
	stock_main \
	stock_demo \
	test_stock_funcs \
	hashset_main \


all : $(PROGRAMS) 

# cleaning target to remove compiled programs/objects
clean :
	rm -f $(PROGRAMS) *.o

help :
	@echo 'Typical usage is:'
	@echo '  > make                          # build all programs'
	@echo '  > make clean                    # remove all compiled items'
	@echo '  > make zip                      # create a zip file for submission'
	@echo '  > make prob1                    # built targets associated with problem 1'
	@echo '  > make test                     # run all tests'
	@echo '  > make test-prob2               # run test for problem 2'
	@echo '  > make test-prob2 testnum=5     # run problem 2 test #5 only'
	@echo '  > make sanity-check             # check that provided files are up to date / unmodified'
	@echo '  > make sanity-restore           # restore provided files to current norms'


############################################################
# 'make zip' to create p1-code.zip for submission
zip : clean clean-tests
	rm -f $(AN)-code.zip
	cd .. && zip "$(CWD)/$(AN)-code.zip" -r "$(CWD)"
	@echo Zip created in $(AN)-code.zip
	@if (( $$(stat -c '%s' $(AN)-code.zip) > 10*(2**20) )); then echo "WARNING: $(AN)-code.zip seems REALLY big, check there are no abnormally large test files"; du -h $(AN)-code.zip; fi
	@if (( $$(unzip -t $(AN)-code.zip | wc -l) > 256 )); then echo "WARNING: $(AN)-code.zip has 256 or more files in it which may cause submission problems"; fi

# @if [[ "$CWD" != "${CWD/ /_/}" ]]; then echo "Space in name"; fi

################################################################################
# sanity targets
sanity-dir :
	@rm -rf sanity
	@mkdir -p sanity
	@cd sanity && wget -q $(URL)/$(AN)-code.zip && unzip -qq $(AN)-code.zip && mv $(AN)-code/* .

sanity-check : sanity-dir
	@cd sanity; n=0; \
	  for f in $(CHECK_FILES); do diff -q $$f ../$$f; ((n += $$?)); done;  \
	  if ((n>0)); then echo 'ERROR: Stock Files Changed, Run `make sanity-restore` to fix this'; else echo 'Stock Files Sane'; fi

sanity-restore : sanity-dir
	@mkdir -p sanity-backups
	@cd sanity && n=0 && \
	  for f in $(CHECK_FILES); do cp --backup=numbered ../$$f ../sanity-backups; mv $$f ../$$f; done && \
	  echo 'Restored original files, backed up copies in directory sanity-backups'


################################################################################
# stock problem
stock_funcs.o : stock_funcs.c stock.h
	$(CC) -c $<

stock_main.o : stock_main.c stock.h
	$(CC) -c $<

stock_demo.o : stock_demo.c stock.h
	$(CC) -c $<

stock_demo : stock_demo.o stock_funcs.o
	$(CC) -o $@ $^

stock_main : stock_main.o stock_funcs.o
	$(CC) -o $@ $^

test_stock_funcs : test_stock_funcs.c stock_funcs.o 
	$(CC) -o $@ $^

################################################################################
# hashset problem
hashset_main : hashset_main.o hashset_funcs.o
	$(CC) -o $@ $^

hashset_main.o : hashset_main.c hashset.h
	$(CC) -c $<

hashset_funcs.o : hashset_funcs.c hashset.h
	$(CC) -c $<


################################################################################
# problem targets
prob1 : stock_funcs.o

prob2 : stock_main stock_funcs.o

prob3 : hashset_main 

################################################################################
# Testing Targets
test : test-prob1 test-prob2 test-prob3

test-setup:
	@chmod u+x testy

test-prob1 : prob1 test_stock_funcs test-setup
	./testy test_stock1.org $(testnum)

test-prob2 : prob2 test_stock_funcs test-setup
	./testy test_stock2.org $(testnum)

test-prob3 : prob3 test-setup
	./testy test_hashset.org $(testnum) 

clean-tests :
	rm -rf test-results


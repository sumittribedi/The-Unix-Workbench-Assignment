README.md:
	{ \
	touch README.md ;\
	echo "## The Unix Workbench Assignment" >> README.md ;\
	date=$$(date) ;\
	echo "Makefile ran at : $$date"  >> README.md ;\
	lines=$$(wc -l < guessinggame.sh);\
	echo "Guessinggame.sh contains $$lines lines of code."  >> README.md ;\
	}
clean:
	rm README.md

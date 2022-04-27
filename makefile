fecha=$(shell date)
lineNum=$(shell wc -l guessinggame.sh)

output: README.md
	@echo "- My guessing game" > README.md
	@echo "- Date make was run: $(fecha)" >> README.md
	@echo "- Lines of code in guessinggame: $(lineNum)" >> README.md
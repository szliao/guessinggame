README.md:
	@echo "# Guessing Game" > README.md
	@echo "This is a bash script to ask you to guess how many files are in the current directory" >> README.md
	@echo "## Run" >> README.md
	@echo '```\nbash guessinggame.sh \n ```' >> README.md
	@echo "## Acknowledgements" >> README.md
	@RUNTIME="$$(date "+%Y/%m/%d %H:%M:%S")"; echo "This README was created at $$RUNTIME \n" >> README.md
	@LINECOUNT="$$(wc -l < guessinggame.sh | bc)"; echo "$$LINECOUNT lines are in guessinggame.sh." >> README.md

clean:
	rm README.md

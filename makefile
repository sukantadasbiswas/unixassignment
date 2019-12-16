dateandtime := $(shell date)

README.md: guessinggame.sh
	echo "Title of the project: Guessing Game" > README.md
	echo "Date and time at which **make** was run: $(dateandtime)" >> README.md
	echo "Number of lines of code contained in **guessinggame.sh**: $(shell cat guessinggame.sh | wc -l)" >> README.md

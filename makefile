all: README.md

README.md: guessinggame.sh
	echo "# Tamer Aziz - GUESSINGGAME PROJECT" > README.md
	echo "" >> README.md
	echo "**MAKEFILE** ran:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "*Number of Line in guessinggame.sh is:*" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

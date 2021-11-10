README.md: guessinggame.sh
	echo "Project Title: Guess the Number of Lines in the Working Directory" > README.md
	date >> README.md
	wc -l < guessinggame.sh | xargs >> README.md
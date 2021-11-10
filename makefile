README.md: guessinggame.sh
	echo "Project Title: Guess the Number of Files in the Working Directory" > README.md
	echo " " >> README.md
	date >> README.md
	echo " " >> README.md
	wc -l < guessinggame.sh | xargs >> README.md
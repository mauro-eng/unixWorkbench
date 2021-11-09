# Variable containing the number of files in the current directory
numFiles=$(find . -maxdepth 1 -type f | wc -l)

# Initializing the variable used to determine if the loop should be stopped
exit_loop=0

while [[ $exit_loop -eq 0 ]]
do
    # Quering the user about the number of files in the current directory
    echo "Guess how many files resides in the current folder (type q to exit): "
    read numGuess

    # Evaluating the user's answer
    if [[ $numGuess -eq 'q' ]]
    then
        let exit_loop=1 # Request to exit the loop
        echo "User requested to exit the program"
    elif [[ $numGuess -eq $numFiles ]]
    then
        let exit_loop=1 # Request to exit the loop
        echo "Congratulations! You guessed correctly!"
    elif [[ $numGuess -lt $numFiles ]]
    then
        echo "In the folder there are more than $numGuess files. Try again!"
    else
        echo "In the folder there are fewer than $numGuess files. Try again!"
    fi
done
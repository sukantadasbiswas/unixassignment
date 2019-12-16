#!/usr/bin/env bash
# File: guessinggame.sh

function guess { 
	# Store the count of files in variable 
	count=$(ls | wc -l)

	# Ensures program enters while loop the first time 
	correct="no"

	# Prompt user and repeat till user's guess is correct 
	while [[ $correct != "yes" ]]
	do 
		# Prompt and read user input 
		echo "How many files are in the current directory? "
		read response 
	
		if [[ response -gt $count ]]
		then
			echo "Too high."
		elif [[ response -lt $count ]]
		then 
			echo "Too low."
	
		# Case where user guess is equal to count 
		else 
			echo "Congratulations"

			# Ensures program ends 
			correct="yes"
		fi
	done 
}

guess

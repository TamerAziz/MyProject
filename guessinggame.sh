#!/usr/bin/env bash
# File: test.sh

function letusplay {

	count=0
	for file in $(ls)
	do
		let count=$count+1
	done

	echo "Guess how many files in the current folder?"
	read  response

	while [[ $response -ne $count ]]
	do

		if [[ $response -gt $count ]]
		then
			echo "$response is greater than expected!"
			echo "Guess again.."
			read response
		else
			echo "$response is less than expected!"
			echo "Guess again.."
			read response
		fi

	done

	echo "$response is exact - CONGRATULATIONS"
}

letusplay

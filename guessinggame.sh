#!/usr/bin/env bash
# File: guessinggame.sh

echo "Make a guess!"
echo "How many files are there is the current directotry?"
function processresponse {
  local response=-1
  local numfiles=$(find . -type f | wc -l | bc -l)
  while [[ $response -ne $numfiles ]]
  do			# Until response is equal to the numfiles
       read response
       if [[ $response -gt $numfiles+5 ]]
       then		# if response is greater than the number of files plus 5 
            echo "Too high..."
	    echo "Guess lower..."
       elif [[ $response -lt $numfiles-5 ]]
       then		# if response is lower than the number of files minus 5
	    echo "Too low..."
            echo "Guess hihger..."
       elif [[ $response -gt $numfiles ]]
       then		# if response is greater than the number of files
	    echo "Guess lower..."
       elif [[ $response -lt $numfiles ]]
       then		# if the response is less than the number of files
	    echo "Guess higher..."
       fi
  done
  echo "Congratulations! $numfiles is the number of files in the current directory."
}
processresponse

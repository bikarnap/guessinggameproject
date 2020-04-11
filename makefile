README.md:
	touch README.md
	echo "*README.md created using make*" > README.md
	echo "# Guessing game project using Bash script" >> README.md
	echo "**Date when make was run**" >> README.md
	echo "" >> README.md 
	date >> README.md
	ecjp "" >> README.md
	echo "**Number of lines of code in guessinggame.sh**" >> README.md
	echo "" >> README.md
	cat guessinggame.sh | wc -l | bc >> README.md

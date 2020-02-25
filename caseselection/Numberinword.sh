#!/bin/bash -x
#To Print the numeric value in word.
read -p   "Enter the number:" number
case $number in 
	1)
		echo "One";;
	2)
		echo "Two";;
	3)
		echo "Three";;
	4)
		echo "Four";;
	5)	
		echo "Five";;
	6)
		echo "Six";;
	7)
		echo "Seven";;
	8)
		echo "Eighth";;
	9)
		echo "Nine";;
	*)
		echo "Not valid dear..." ;;
esac

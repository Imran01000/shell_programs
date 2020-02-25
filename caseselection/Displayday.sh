#!/bin/bash
#To print a day by its respective value.
read -p "Enter the number" day
case $day in 
	1) 
      echo "Sunday";
		;;
	2) 
      echo "Monday";
		;;
	3) 
      echo "Tuesday";
		;;
	4) 
      echo "Wednesday";
		;;
	5) 
      echo "Thursday";
		;;
	6) 
      echo "friday";
		;;
	7) 
      echo "Saturday";
		;;
	*)
	   echo "Invalid input";
		;;
esac				


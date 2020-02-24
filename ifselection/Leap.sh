#!/bash/bin -x
#To check wheather given year is a leap year or not.
read -p "Enter  the Number" year;
if (($year > 999)) 
then
	if (( (($year%4==0 && $year%100!=0)) || (($year%400==0)) )) 
	then
		echo "Given number is leap year";
         else
                echo "Given number is not a leap year";
	fi
else
	echo "Not a valid number!";
fi


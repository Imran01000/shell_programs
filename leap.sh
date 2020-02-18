read -p "Enter  the Number" no;
if ( (($no > 999)) )
then
	if (( (($no%4 == 0 && $no%100 != 0)) || (($no%400 == 0))  )) 
	then
		echo "Given number is leap year";
         else
                echo "Given number is not a leap year";
	fi
else
	echo "NOT A VALID NUMBER!!";
fi


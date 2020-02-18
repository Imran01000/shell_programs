p=$(($RANDOM%2));
if (( $p == 1 ))
then
	echo "Head";
else
	echo "Tail";
fi 

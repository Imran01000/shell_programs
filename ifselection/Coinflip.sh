#!/bash/bin -x
#flip coin problem based on random function
head=1;
randomNumber=$(($RANDOM%2));
if (( $randomNumber == $head ))
then
	echo "Head";
else
	echo "Tail";
fi 

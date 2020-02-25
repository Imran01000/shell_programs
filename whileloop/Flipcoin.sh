#!/bin/bash -x
#To print head and tail with corresponding to (0 and 1) and less than 12 times.
tail=1;
head=0;
value=1
while (($value<=11))
do 
	number=$(($RANDOM%2));
	if (($number==1))
	then
		echo "tail";
	else
		echo "head";	
	fi
	((value++));
done

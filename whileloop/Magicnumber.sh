#!/bin/bash -x
#Generate 2 digits random number between 1 to 100 and find it by binary search. 
number=$(($RANDOM%90+10))
low=1;
high=100 
while (($low<=$high))
do 
	mid=$(( (($high+$low))/2 ));
	if (($number<$mid))
	then
		high=$mid-1;
	elif (($number>$mid))
	then
		low=$mid+1;
		
 	elif (($number==$mid))
	then
		echo "Found $number";
		break;
		
	fi
done


#!/bin/bash -x
n=$(($RANDOM%90+10))
low=1;
high=100 
while (($low<=$high))
do 
	mid=$(( (($high+$low))/2 ));
	if (($n<$mid))
	then
		high=$mid-1;
	elif (($n>$mid))
	then
		low=$mid+1;
		
 	elif (( $n==$mid))
	then
		echo "found $n";
		break;
		
	fi
done


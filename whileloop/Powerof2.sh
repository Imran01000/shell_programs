#!/bin/bash -x
#To print the value of 2 power of n and vlaue should be equal or less than 256.
value=$1;
number=1
if ((value<=8))
then 
	while ((number<=value))
	do 	
		pow=$((2**$number))
		echo $pow;
		((number++));
       
	done
else
	echo "Number should be less than 9";
fi

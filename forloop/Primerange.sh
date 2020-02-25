#!/bin/bash -x
#To print the prime numbers between the given range.
read -p "Enter the range" from; 
read to;
for(( count=$from;count<=$to;count++ ))
do
   temp=0;
	for(( i=2;i<=$count-1;i++ ))
	do
		if (( $count%$i==0 ))
		then
			((temp++));
		fi
	done
	
	if ((temp==0))
	then
		echo $count;
	else
		temp=0;
	fi
done

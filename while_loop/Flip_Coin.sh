#!/bin/bash -x
tail=1;
head=0;
n1=1
while ((n1<=11))
do 
	n=$(($RANDOM%2));
	if (($n==1))
	then
		echo "tail";
	else
		echo "head";	
	fi
	((n1++));
done

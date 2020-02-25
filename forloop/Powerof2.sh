#!/bin/bash -x
#To print the 2^n values for the given number.
number=$1;
for((count=1; count<=$number; count++))
do
	power=$((2**$count));
	echo $power;
done

#!/bin/bash -x
#To find factorial for the given number.
read -p "Enter a number" number
factorial=1;
for((count=1;count<=$number;count++))
do
	factorial=$(($factorial*$count));
done
echo $factorial;

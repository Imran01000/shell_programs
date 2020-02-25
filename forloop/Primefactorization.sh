#!/bin/bash -x
#To print a prime factors for the given number.
read -p "Enter the number" number
for((i=2;i<=number;i++))
do
	if (($number%$i==0))
	then
			count=0;
			while(($number%i==0))
			do
				number=$(($number/$i));
				((count++))
				echo $i;
			done
	fi 

done

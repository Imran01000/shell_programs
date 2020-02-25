#!/bin/bash -x
read -p "Enter the number" n
temp=0;
for((count=2;count<=n-1;count++))
do
	if (($n%2==0))			
	then
		((temp++));
	fi
done
	if (($temp==0))
	then
		echo "Given number is a prime number";
	else
		echo "Not prime";
	fi


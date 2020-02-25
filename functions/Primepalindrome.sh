#!/bin/bash -x
#To find wheather the given number is prime and palindrome or not.
function isprime(){
	temp=0;
	for(( count=2;count<=$number-1;count++))
	{
		if (( $(($number%$count))==0 ))
		then
			((temp++));
		fi
	}
	if ((temp==0))
	then
        	echo "$number is prime number";
	else
		echo "not prime number";
	fi
}
function ispalindrome(){
	temp=$number;
	sum=0;
	while (($number>0))
	do
		remainder=$(($number%10));
		sum=$(( $(($sum*10))+$remainder))	
		number=$(($number/10));
	done
	echo $sum;
	if (($temp==$sum))
	then
		echo "Palindrome";
	else
		echo "Not palindrome";
	fi
}
echo "Enter the number"
read number
result="$(isprime $number)";
echo $result;
result1="$(ispalindrome $number)";
echo $result1

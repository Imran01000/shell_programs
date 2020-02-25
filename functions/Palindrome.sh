#!/bin/bash -x
#To find wheather the given two numbers are palindrome or not.
function ispalindrome(){
	temp=$number
	sum=0;
	while (($number>0))
	do
		remainder=$(($number%10));
		sum=$(( $(($sum*10))+$remainder));
		number=$(($n/10));
		
	done
	if (($temp==$sum))
	then
		echo "It is palindrome"
	else
		echo "Not palindrome";
	fi
}

echo "Enter the first number";
read number;
result="$(ispalindrome  $number)";
echo $result;
echo "Enter the second number";
read number;
result="$(ispalindrome $number)";
echo $result;

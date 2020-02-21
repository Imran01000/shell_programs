#!/bin/bash -x
function ispalindrome(){
        temp=$n
        sum=0;
	while ((n>0))
	do
		r=$(($n%10));
		sum=$(( $(($sum*10))+$r));
		n=$(($n/10));
		
	done
	if (( $temp==$sum))
	then
		echo "It is palindrome"
	else
		echo "not palindrome";
	fi
}

echo "Enter the first number";
read n;
result1="$(ispalindrome  $n)";
echo $result1;
echo "Enter the second number";
read n;
result1="$(ispalindrome $n)";
echo $result1;

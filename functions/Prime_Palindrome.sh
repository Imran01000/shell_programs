function isprime(){
	temp=0;
	for(( count=2;count<=$n-1;count++))
	{
		if (( $(($n%$count))==0 ))
		then
			((temp++));
		fi
	}
	if ((temp==0))
	then
        	echo "$n is prime number";
	else
		echo "not prime number";
	fi
}
function ispalindrome(){
	temp=$n;
	sum=0;
	while (($n>0))
	do
		r=$(($n%10));
		sum=$(( $(($sum*10))+$r))	
		n=$(($n/10));
	done
	echo $sum;
	if (($temp==$sum))
	then
		echo "palindrome";
	else
		echo "not palindrome";
	fi
}
echo "Enter the number"
read n
res="$(isprime $n)";
echo $res;
res1="$(ispalindrome $n)";
echo $res1

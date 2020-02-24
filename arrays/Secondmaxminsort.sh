#!/bin/bash -x
#To find the second minimum and maximum number from the sorted array.
for((count=0;count<10;count++))
do 
	random=$(($RANDOM%900+100))
	a[count]=$random;
done
echo "${a[@]}"
temp=0;
for((i=0;i<10;i++))
do
	for((j=0;j<=9;j++))
	do
		if ((${a[i]} < ${a[j]}))
		then
			temp=${a[j]};
			a[j]=${a[i]};
			a[i]=$temp;
		fi	
	done
done
echo "${a[@]}"
second_max=${a[0]};
second_min=${a[0]};
max=${a[0]};
min=${a[0]};
for((count=0;count<10;count++))
do 
	if (($max < ${a[count]}))
	then
		second_max=$max;
		max=${a[count]};
	fi

	if (($min > ${a[count]}))
	then
		second_min=$min;
		min=${a[count]};
	fi
done
echo "second max is $second_max";
echo "second min is ${a[1]}";

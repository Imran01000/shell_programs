#!/bin/bash -x
#To find the sum of triplet is zerp form the given array.
a=(-7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 );
flag=0
for((i=0;i<${#a[@]}-2;i++))
do
	for((j=$i+1;j<${#a[@]}-1;j++))
	do
		for((k=$j+1;k<${#a[@]};k++))
		do
			if ((  $((${a[i]}+${a[j]}+${a[k]}))==0  ))
			then
				echo "${a[i]}"
				echo "${a[j]}"
				echo "${a[k]}"
			else
				flag=1;
			fi

		done
	done
done



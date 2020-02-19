#!/bin/bash -x
read -p "Enter the number" n
for(( i=2;i<=n;i++))
do
        
	if (($n%$i==0))
	then
		temp=0;
		for((j=2;j<=i-1;j++))
		do
	        	if (($i%$j==0))
		 	then
				((temp++));
			fi

		done
		if ((temp==0))
		then
			echo $i;
		fi
	fi
done

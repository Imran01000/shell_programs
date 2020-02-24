#!/bin/bash -x
#To print the 2nd minimum and maximam value from the array.
for(( count=0;count<10;count++))
do 
	r=$(($RANDOM%900+100));

        a[count]=$r;
done
echo "${a[@]}";
second_max=${a[0]};
second_min=${a[0]};
max=${a[0]};
min=${a[0]};

for(( count=0;count<10;count++))
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
echo "The second maximum value is $second_max";
echo "The second minimum value is $second_min";



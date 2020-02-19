#!/bin/bash -x
n=$1;
sum=0;
for(( count=1;count<=n;count++))
do
	n1=`echo "scale=3; 1/$count" | bc -l`;
	sum=`echo "scale=3; $sum+$n1" | bc -l`;
        
done
	echo $sum;

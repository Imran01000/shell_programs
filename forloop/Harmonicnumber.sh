#!/bin/bash -x
#To evalute the harmonic value for the given number.
number=$1;
result=0;
value=0
for((count=1;count<=$number;count++))
do
	value=`echo "scale=3; 1/$count" | bc -l`;
	result=`echo "scale=3; $result+$value" | bc -l`;
        
done
	echo $result;

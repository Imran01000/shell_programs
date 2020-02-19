#!/bin/bash -x
n=$1;
for(( count=1; count<=n; count++))
do
	n1=$((2**$count));
	echo $n1;
done

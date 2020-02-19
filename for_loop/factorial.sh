#!/bin/bash -x
read -p "Enter a number" n
f=1;
for((count=1;count<=n;count++))
do
	f=$(($f*$count));
done
echo $f;

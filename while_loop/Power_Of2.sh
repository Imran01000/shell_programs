#!/bin/bash -x
n=$1;
n1=0; 
while ((pow<256))
do 	
	pow=$((2**$n1))
	echo $pow;
	((n1++));
        if ((n1==n))
	then
		break;
	fi
done

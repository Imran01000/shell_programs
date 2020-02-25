#!/bin/bash -x
#To find the minimum and maximum for the given expressions.
read -p "Enter the value of a:" a;
read -p "Enter the value of b:" b;
read -p "Enter the value of c:" c;
result1=`echo "scale=2; $a+$b*$c" | bc -l`; 
result2=`echo "scale=2; $c+$a/$b" | bc -l`;
result3=`echo "scale=2; $a%$b+$c" | bc -l`;
result4=`echo "scale=2; $a*$b+$c" | bc -l`;
echo "$result1,$result2,$result3,$result4"
max=$result1;
min=$result1;
if (( `echo "$result1<$result2" | bc -l` ))
then
	max=`echo "$result2" | bc -l`;
	if (( `echo "$max<$result3" | bc -l` ))
	then 
		max=`echo "$result3" | bc -l`;
	fi
	if (( `echo "$max<$result4" | bc -l` ))
	then 
		max=`echo "$result4" | bc -l`;
	fi
fi
echo "Maximum value is:"$max ;

if (( `echo "$result1>$result2" | bc -l` ))
then
	min=`echo "$result2" | bc -l`;
	if (( `echo "$min>$result3" | bc -l` ))
	then 
        min=`echo "$result3" | bc -l`;
	fi

   if (( `echo "$min>$result4" | bc -l` ))
	then 
        min=`echo "$result4" | bc -l`;

	fi
fi
echo "Minimum value is :"$min;


_#!/bin/bash -x

echo "enter the range"
read start
read end
flag=0
unit=0
ten=0
for((i=$start;i<=$end;i++))
do
	number=$i;
	unit=$(($number%10));
	ten=$(($number/10));

		if(($ten==$unit))
		then
			flag=1;
		fi
		if(($flag==1))
		then
				echo $i;
		fi
done


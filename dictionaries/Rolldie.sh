#!/bin/bash -x
#variables
count1=0;
count2=0;
count3=0;
count4=0;
count5=0;
count6=0;
#keys
key1=1;
key2=2;
key3=3;
key4=4;
key5=5;
key6=6;

declare -A roll;
#while loop
while((1))
do 
	dicenumber=$(($RANDOM%6+1))
#case selection
	case $dicenumber in
					1)
						((count1++));
						roll[$key1]=$count1
						;;
					2)	
						((count2++));
						roll[$key2]=$count2
						;;
					3)
						((count3++));
						roll[$key3]=$count3
						;;
					4)
                  ((count4++));
                  roll[$key4]=$count4
                  ;;
					5)
                  ((count5++));
                  roll[$key5]=$count5
                  ;;
					6)
                  ((count6++));
                  roll[$key6]=$count6
                  ;;
esac
if (($count1==10 || $count2==10 || $count3==10 || $count4==10 || $count5==10 || $count6==10))
then 
		break;
fi
done
for((i=1;i<=6;i++))
do
echo "[$i :${roll[$i]} ]"
done
max=${roll[1]}
min=${roll[1]}
for((i=1;i<=6;i++))
do
	if (($max < "${roll[$i]}"))
	then
			max="${roll[$i]}";
	fi
	if(($min > "${roll[$i]}"))
	then
			min="${roll[$i]}";
	fi 
done
echo "Maximum is" $max;
echo "Minimum is" $min;

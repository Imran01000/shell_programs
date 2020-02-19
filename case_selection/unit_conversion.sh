#!/bin/bash -x
read -p "Enter the your choice: 1-feet to inch 2-inch to feet 3-meter to feet 4-feet to meter" n
case $n in
	1)
		read -p "Enter the feet value " n1;
		n2=$((12*$n1));
		echo $n2 "in inches" ;
		;;
	2)
		read -p "Enter the inch value" n1;
		n2=`echo "scale=3; $n1/12" | bc -l`; 
		echo $n2 "in feet";
		;;
	3)   
		read -p "Enter the meter value" n1;
	        n2=`echo "scale=3; $n1/0.348" | bc -l`;
		echo $n2 "in feet";
		;;

	4) 	
		read -p "Enter the feet value" n1;
                n2=`echo "scale=3; $n1*0.348" | bc -l`;
		echo $n2 "in meter";
		;;

	*)
		echo "invalid input";
esac

#!/bin/bash -x
read -p "Enter the your choice: 1-feet to inch 2-inch to feet 3-meter to feet 4-feet to meter" choice
case $choice  in
	1)
		read -p "Enter the feet value " feet;
		inch=$((12*$feet));
		echo $inch "in inches" ;
		;;
	2)
		read -p "Enter the inch value" inch;
		feet=`echo "scale=3; $inch/12" | bc -l`; 
		echo $feet "in feet";
		;;
	3)   
		read -p "Enter the meter value" meter;
	   feet=`echo "scale=3; $meter/0.348" | bc -l`;
		echo $feet "in feet";
		;;

	4) 	
		read -p "Enter the feet value" feet;
		meter=`echo "scale=3; $feet*0.348" | bc -l`;
		echo $meter "in meter";
		;;

	*)
		echo "Invalid input";
esac

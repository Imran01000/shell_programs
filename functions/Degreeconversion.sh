#!/bin/bash -x
#Enter your choice and respectively get temprature converion 
echo "Enter your choice "
echo "1-celsius to fahrenheit";
echo "2-fahrehneit to celsius";
read choice;
function degf(){


		fahrenheit=`echo "scale=3; (($celsius*9/5))+32" | bc -l`;
		echo "value in fahrenheit is $fahrenheit";
}

function degc(){        

		celsius=`echo "scale=3; (($fahrenheit-32))*5/9" |bc -l`;
		echo "value in celsius is $celsius";
}


case $choice in 
	1)
		echo "Enter the celsius value";
		read celsius;
		result="$(degf $celsius)";
		echo $result;
		;;
        2)
		echo "Enter your fahrenheit value";
		read fahrenheit;
		result="$(degc $fahrenheit)";
		echo $result;          	
		;;
        *)
		echo "Invalid input";
		;;
esac

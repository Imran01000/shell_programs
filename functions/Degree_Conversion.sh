#!/bin/bash -x
echo "Enter your choice "
echo "1-celcius to farheneit";
echo "2-farheneit to celcius";
read n;
function degf(){


        f=`echo "scale=3; (($c*9/5))+32" | bc -l`;
        echo "value in farheneit is $f";
}

function degc(){        

        c=`echo "scale=3; (($f-32))*5/9" |bc -l`;
        echo "value in celcius is $c";
}


case $n in 
	1)
		echo "Enter the celsius value";
                read c;
   		result1="$(degf $c)";
		echo $result1;
		;;
        2)
		echo "Enter your farheneit value";
		read f;
		result2="$(degc $f)";
		echo $result2;          	
		;;
        *)
		echo "invalid input";
		;;
esac

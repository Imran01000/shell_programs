read -p "Enter the value of a:" a;
read -p "Enter the value of b:" b;
read -p "Enter the value of c:" c;
res1=`echo "scale=2; $a+$b*$c" | bc -l`; 
res2=`echo "scale=2; $c+$a/$b" | bc -l`;
res3=`echo "scale=2; $a%$b+$c" | bc -l`;
res4=`echo "scale=2; $a*$b+$c" | bc -l`;
echo "$res1,$res2,$res3,$res4"
max=$res1;
min=$res1;
if (( `echo "$res1<$res2" | bc -l` ))
then
	max=`echo "$res2" | bc -l`;
elif (( `echo "$res1<$res3" | bc -l` ))
then 
	max=`echo "$res3" | bc -l`;
elif (( `echo "$res1<$res4" | bc -l` ))
then 
        max=`echo "$res4" | bc -l`;
fi
echo "Maximum value is:"$max ;

if (( `echo "$res1>$res2" | bc -l` ))
then
	min=`echo "$res2" | bc -l`;
elif (( `echo "$res1>$res3" | bc -l` ))
then 
        min=`echo "$res3" | bc -l`;

elif (( `echo "$res1>$res4" | bc -l` ))
then 
        min=`echo "$res4" | bc -l`;

fi
echo "Minimum value is :"$min;


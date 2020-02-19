read -p "Enter the value of a:" a;
read -p "Enter the value of b:" b;
read -p "Enter the value of c:" c;
res1=$(($a+$b*$c)); 
res2=$(($c+$a/$b));
res3=$(($a%$b+$c));
res4=$(($a*$b+$c));
echo "$res1,$res2,$res3,$res4"
max=$res1;
min=$res1;
if ((res1<res2))
then
	max=$res2;
elif ((res1<res3))
then 
	max=$res3;
elif ((res1<res4))
then 
        max=$res4;
fi
echo "Maximum value is:"$max ;

if ((res1>res2))
then
	min=$res2;
elif ((res1>res3))
then 
        min=$res3;

elif ((res1>res4))
then 
        min=$res4;

fi
echo "Minimum value is :"$min;


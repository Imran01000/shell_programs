sum=0
for i in `seq 5`
do
	res=$(($RANDOM%90+10));
        echo $res;
        sum=$(($sum+$res));
done
echo "Sum is:"$sum
avg=0
avg=$(($sum/5));
echo $avg;

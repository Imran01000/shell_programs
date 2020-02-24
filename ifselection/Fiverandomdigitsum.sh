#!bash/bin -x
#
result=0;
average=0;
for i in `seq 5`
do
	randomNumber=$(($RANDOM%90+10));
        echo $randomNumber;
        result=$(($result+$randomNumber));
done
echo "Sum is:"$result;

average=$(($result5));
echo $average;

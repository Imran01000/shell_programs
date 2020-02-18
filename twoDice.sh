res1=$(($RANDOM%6+1));
res2=$(($RANDOM%6+1));
 echo "value of first dice is" $res1;
 echo "value of second dice is" $res2;
res3=$(($res1+$res2));
 echo "Additon of both" $res3;

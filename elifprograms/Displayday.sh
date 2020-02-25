#!bash/bin -x
#Display the week day by using (1 to 7) number
read -p "Enter the number" day;
if (($day==1))
then
	echo "sunday";
elif (($day==2))
then
	echo "Monday";
elif (($day==3))
then
	echo "Tuesday";
elif (($day==4))
then
	echo "Wednesday";
elif (($day==5))
then
	echo "Thursday";
elif (($day==6))
then
	echo "Friday";
elif (($day==7))
then
	echo "Saturday";
fi



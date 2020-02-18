read -p "Enter the number " n
if ((n==1))
then
	echo "unit";
elif ((n==10))
then 
	echo "ten";
elif ((n=100))
then 
        echo "hundred";
elif ((n==1000))
then 
        echo "thousand";
elif ((n==10000))
then 
        echo "ten thousand";
fi


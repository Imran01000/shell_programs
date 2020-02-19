read -p "Enter the range" n1; 
read n2;
for(( count=n1;count<=n2;count++ ))
do
   temp=0;
	for(( i=2;i<=$count-1;i++ ))
	do
		if (( $count%$i==0 ))
		then
			((temp++));
		fi
	done
	
	if ((temp==0))
	then
		echo $count;
	else
		temp=0;
	fi
done

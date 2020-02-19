read -p "Enter the number " n
if ((${#n}==4))
then
 	n1=$(($n%10));
	echo $n1 "Is in unit place!";
	n=$(($n/10));

	if ((${#n}==3))
	then 
		n1=$(($n%10));
		echo  $n1 "Is in ten place!";
		n=$(($n/10));
	fi
	if ((${#n}==2))
	then 
                n1=$(($n%10));
        	echo  $n1 "Is in hundred place!";
		n=$(($n/10));
	fi
	if ((${#n}==1))
	then 
        	n1=$(($n%10));
		echo  $n1 "Is in thousand place!";
	fi

elif ((${#n}==3))
then
        n1=$(($n%10));
        echo $n1 "Is in unit place!";
        n=$(($n/10));

        if ((${#n}==2))
        then 
                n1=$(($n%10));
                echo  $n1 "Is in ten place!";
                n=$(($n/10));
        fi
        if ((${#n}==1))
        then 
                n1=$(($n%10));
                echo  $n1 "Is in hundred place!";
                n=$(($n/10));
         fi
		 
elif ((${#n}==2))
then
	n1=$(($n%10));
        echo $n1 "Is in unit place!";
        n=$(($n/10));

        if ((${#n}==1))
        then 
                n1=$(($n%10));
                echo  $n1 "Is in ten place!";
                n=$(($n/10));
        fi
elif ((${#n}==1))
then
	n1=$(($n%10));
        echo $n1 "Is in unit place!";
        n=$(($n/10));
fi




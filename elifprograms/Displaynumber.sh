#!/bin/bash -x
#Display the position of digits with respectively to eact other.
read -p "Enter the number " number
if ((${#number}==4))
then
	value=$(($number%10));
	echo $value "Is in unit place!";
	number=$(($number/10));

	if ((${#number}==3))
	then 
		value=$(($number%10));
		echo  $value "Is in ten place!";
		number=$(($number/10));
	fi
	if ((${#number}==2))
	then 
		value=$(($number%10));
		echo  $value"Is in hundred place!";
		number=$(($number/10));
	fi
	if ((${#number}==1))
	then 
		value=$(($number%10));
		echo  $value"Is in thousand place!";
	fi

elif ((${#number}==3))
then
	value=$(($nu%10%10));
	echo $value "Is in unit place!";
	number=$(($number/10));

	if ((${#number}==2))
	then 
		value=$(($number%10));
		echo  $value "Is in ten place!";
		number=$(($number/10));
	fi
	if ((${#number}==1))
	then 
		value=$(($number%10));	
		echo  $value "Is in hundred place!";
		number=$(($number/10));
   fi
		 
elif ((${#number}==2))
then
	value=$(($number%10));
	echo $value "Is in unit place!";
	number=$(($number/10));

	if ((${#number}==1))
	then 
		value=$(($number%10));
		echo  $value "Is in ten place!";
		number=$(($number/10));
	fi
elif ((${#number}==1))
then
	value=$(($number%10));
	echo $value"Is in unit place!";
	number=$(($number/10));
fi




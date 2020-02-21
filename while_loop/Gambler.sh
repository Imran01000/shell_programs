#!/bin/bash -x
stacke=10;
win=0;
loss=0;
bets=0;
goal=20;
while((1))
do
	n=$(($RANDOM%2+1));
        if (($n==1))
	then
		if (($stacke==$goal))
		then
			echo "you won";
			break;
		else
			((win++));
			((stacke++));
		fi
		
	elif(($n==2))
	then
		if (($stacke<0))
		then
			echo  "you loss";
			break;
		else
			((stacke--));
			((loss++))
		fi
	fi


		
	((bets++))
done
echo "your no of bets $bets";
echo "you win $win many times";
echo "you loss $loss many times";

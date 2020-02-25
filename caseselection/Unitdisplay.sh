#!bash/bin -x
#To print the numeric value in word.
read -p "Enter the number" number
case $number in
	1)
		echo "unit";;
	10)
		echo "ten";;
	100)	
		echo "hundred";;
	1000)
		echo "thousand";;
	*)
		echo "Invalid input";;
esac

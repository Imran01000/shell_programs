read -p "Enter the number" n
case $n in
        1)
	        echo "unit";;
	10)
		echo "ten";;
	100)
		echo "hundred";;
	1000)
		echo "thousand";;
	*)
		echo "invalid input";;
esac

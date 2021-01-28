#!/usr/bin/bash 


echo "THIS PROGRAM WILL DISPLAY THE TENS HUNDREDS THOUSANDS DIGIT OF A NUMBER"

echo " "

read -p "ENTER a number to display its ten hundred thousand etc" num
        
k=$num
count=0
while [ $k -gt 0 ]
do
	count=$(($count +1))

        l=$(($k % 10))
        k=$(($k/10))
	

        case $count in
                1)
                echo "ones = $l"
                ;;
                2)
                echo "tens = $l "
                ;;
                3)
                echo " hundred = $l"
                ;;
                4)
                echo " thousand = $l"
                ;;
                5)
                echo " ten thousand  = $l"
                ;;
                6)
		 echo " lakhs = $l "
		;;
		*)
		m=$(($count - 6))
		echo "+ $m places  more than lakhs = $l"

	esac
done


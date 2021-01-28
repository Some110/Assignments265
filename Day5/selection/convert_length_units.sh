#!/usr/bin/bash -x

echo "THIS PROGRAM WILL CONVERT UNITS "
echo " " 
read -p " Enter (1) feet to inch (2) feet to meter (3) inch to feet (4) meter to feet " c


case $c in
        1)

        read -p " Enter length in feet " length
        length=$(( $length*12 ))

	echo "length in inch is = $length"

        ;;

        2)
        read -p " Enter length in feet " length
        length=`echo "$length*0.3048 " | bc -l`

        echo "length in meter is = $length"

        ;;

        3)
        read -p " Enter length in inch " length
        length=$(( $length*1/12 ))

        echo "length in inch is = $length"

	;;

        4)
        read -p " Enter length in meter " length
        length=$(( $length*3.281 ))

        echo "length in inch is =  $length"

           ;;
esac

              

   






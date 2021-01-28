#!/usr/bin/bash -x

read -p "enter date in the following format day/month/year " date

d=`echo $date | awk -F/ '{print $1}'`

m=`echo $date | awk -F/ '{print $2}'`

y=`echo $date | awk -F/ '{print $3}'`

y0=$(($y -(14 -$m)/12))

x=$(($y0 + $y0/4 -$y0/100 + $y0/400))

m0=$(($m +12 * ((14- $m)/12)-2))

d0=$(( ($d +$x + ((31*$m0)/12)) % 7  ))

echo " $d0 "

 

case $d0 in 
        
	1)
        echo "MONDAY"
        ;;

        2)
        echo "TUESDAY"
        ;;

        3)
        echo "WEDNESDAY"
        ;;

        4)
        echo "THURSDAY"
        ;;

        5)
        echo "FRIDAY"
        ;;

        6)
        echo "SATURDAY"
        ;;

        0)
        echo "SUNDAY"
        ;;      

esac



 




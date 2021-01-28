#!/usr/bin/bash 


read -p "enter (1) For celcius to farenheight (2) For farenheight to celcius " read1

case $read1 in 

	1)

	if [ $read1 -ge 0 && $read1 -le 100 ];then
		
		degF=$((`echo '$read1 * 9/5' | bc -l` + 32))
		echo  " Farenheight =  $degF "

	else

		echo " temp entered is not within 0  and 100 degree celcius"
	fi

	;;

	2)

	if [ $read1 -ge 32 && $read1 -le 212 ];then
                
                degC=`echo"$(($read1 - 32))* 5/9" | bc -l` )) 
		echo  " Celcius =  $degC "

        else

                echo " temp entered is not within 32  and 212 degree celcius"
        fi

        ;;

esac

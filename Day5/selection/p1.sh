#!/usr/bin/bash

read -p "ENTER PROGRAMS NUMBERS 1 2 3 4 5 6 7 8 9 TO RUN THE RESPECTIVE PROGRAMS   " prog_num


case $prog_num in
 	
	1)
	echo "THIS PROGRAM PRINTS MAXIMUM AND MINIMUM OF 5 RANDOM 3 DIGIT NUMBER"
	echo "   "

	counter=1
	max=0
	min=0
	
	while [ $counter -le 5 ];
	do
	
		rand=$((RANDOM % 1000 ))
	
		if [[ $rand -lt 100  ]];
		then

			rand=$(($rand+100))

		fi	

		
		if [[ $min -eq 0 ]];
		then
		
		min=$rand

		fi

		if [[ $max -lt $rand ]];
		then
		
			max=$rand

		fi

		if [[ $rand -lt $min ]];
		then
			min=$rand


		fi
		counter=$(($counter+1))
	done

	echo "largest random number is $max"

	echo "Smallest random number is $min"

	;;


	2)

	echo "THIS PROGRAM WILL CHECK WHETHER THE ENTERED DATE IS WITH MARCH 20 TO JUNE 20 "
	echo "  "
	
	read -p "enter date in the following format day/month/year" date
	day=`echo $date | awk -F/ '{print $1}'`
	month=`echo $date | awk -F/ '{print $2}'`
	
	if [[ $month -gt 2 && $month -lt 7 && $date -le 20 ]];
	then
		echo "TRUE"
	else
		echo "FALSE"

	fi

	;;

	3)
	
	echo "THIS PROGRAM CHECKS A YEAR IS LEAP OR NOT"
	
	read -p "enter year " year
	f=0
	
	if [ $year -gt 999 ];
	then
	
		if [ $(($year % 400 )) -eq 0 ];
		then
			if [ $(( $year % 4 )) -eq 0 && $(( $year % 100)) -eq 0 ];
			then
				echo "$year is a leap year"
				f=$(($f+1))
			fi



		else 
		
			if [ $(($year % 4)) -eq 0 ];
			then
			
				echo "$year is a leap year"
				 f=$(($f+1))			
			fi

			
		fi


		 if [ $f -eq 0 ];
                        then
                                echo "$year is not a leap year"

                        fi


	;;

	4)

	echo "THIS PROGRAM WILL FLIP A COIN "
	echo " "
	read -p "press f to flip coin " flip

	while [ $flip -eq f ]
	do
		echo " .... ... FLIPPING COIN ......"
		rand=$((RANDOM % 2))
		
		if [[ $rand -eq 0 ]];
		then
			echo "TAILS"
		
		else
			echo "HEAD"
		fi
	
		read -p "press q to quit or f to flip again" flip2
		flip=$flip2
	done
	
	;;

	5)

	echo " THIS PROGRAM WILL TAKE ANY SINGLE DIGIT NUMBER AND PRINT IT IN WORDS "	

	read -p "enter any single digit number" digit

	
		
		case $digit in 
	
			1)
			echo "One"
			;;
			2)
			echo "TWO"
			;;
			3)
			echo "THREE"
			;;
			4)
			echo "FOUR"
			;;
			5)
			echo "FIVE"
			;;
			6)
			echo "SIX"
			;;
			7)
			echo "SEVEN"
			;;
			8)
			echo "EIGHT"
			;;
			9)
			echo "NINE"
			;;
			0)
			echo "ZERO"
			;;	
			*) 
			echo "NOT A SINGLE DIGIT NUMBER"

		
	6)
	;;
	7)
	echo "THIS PROGRAM WILL DISPLAY THE TENS HUNDREDS THOUSANDS DIGIT OF A NUMBER"

	echo " "

	read -p "ENTER a number to display its ten hundred thousand etc" num
	
	k=$num
	count=0
	while [ $k -ge 0 ]
	do
		count=$(($count +1))

		l=$(($num % 10))
		k=$(($k/10))

		case $count in
			1)
			echo "tens = $l"
			;;
			2)
			echo "hundreds = $l "
			;;
			3)
			echo " thousand = $l"
			;;
			4)
			echo "ten thousand = $l"
			;;
			5)
			echo "lakh = $l"
			;;
			*)
			echo "more than lakhs "
	done
	;;

			
		8)
		
		echo " THIS PROGRAM WILL TAKE 3 INPUTS AND CALCULATE 3 EXPRESSIONS , EXP1 = (a+b)*c , EXP2 = (a % b) +c ,EXP3 = c+(a/b) , EXP4 = (a*b)+c "
		echo " "
		read -p "enter any 3 space separated  numbers "  a b c
		
		exp1=$(( ($a+$b)*$c ))
		exp3=$(( $c+($a/$b) ))
		exp2=$((($a % $b)+ $c ))
		exp4=$(( ($a*$b)+ $c ))
		
		counter =0
		max=0
		min=0
		exp_min=" "
		exp_max=" "
		
		
		if [ $exp1 -lt $exp2 ]
		then
			min=$exp1
			exp_min="EXP1"
			
		elif [ $exp2 -lt $exp1  ]
		then
			min=$exp2
			exp_min="EXP2"
		fi
		
		if [ $exp3 -lt $min  ]
		then 
			min=$exp3
			exp_min="EXP3"

		elif [ $exp4 -lt $min ]
		then
			min=$exp4
			exp_min="EXP4"
		fi
		
		 if [ $exp1 -lt $exp2 ]
                then
                        max=$exp2
			exp_max="EXP2"
                elif [ $exp2 -lt $exp1  ]
                then
                        max=$exp1
			exp_max="EXP1"
                fi
                
                if [ $exp3 -lt $min  ]
                then 
                        max=$exp3
			exp_max="EXP3"
                
                elif [ $exp4 -lt $min ]
                then
                        max=$exp4
			exp_max="EXP4" 
                fi
		

		echo " maximum is $exp_max = $max "
		echo " minimum is $exp_min = $min  " 
		
		
		;;
=
		
		9)

		echo "THIS PROGRAM WILL CONVERT UNITS "
		echo " " 
		read -p " Enter (1) feet to inch (2) feet to meter (3) inch to feet (4) meter to feet " c
		

		case $c in
			1)
	
			read -p " Enter length in feet " length
			length=$(( $length*12 ))
		
			echo "length in inch is $length"

			;;
		
			2)
			read -p " Enter length in feet " length
                        length=$(( $length*0.3048 ))
                
                        echo "length in meter is $length"

                        ;;
			
			3)
			read -p " Enter length in inch " length
                        length=$(( $length*1/12 ))
                
                        echo "length in inch is $length"

                        ;;
			
			4)
			read -p " Enter length in meter " length
                        length=$(( $length*3.281 ))
                
                        echo "length in inch is $length"

                        ;;

		esac

		

		
		
		

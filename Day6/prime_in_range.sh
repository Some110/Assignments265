#!/usr/bin/bash

echo " THIS PROGRAM WILL PRINT ALL THE PRIME NUMBERS IN A SPECIFIC RANGE ENTERED BY THE USER "

read -p " Enter any 2 space separated nubers A B,  to define the range A tO B   "  num1 num2

f=0

for ((j=num1;j<=num2;j++));
then

	if [[ $j -gt 1]]

	then

		for ((i=2;i<=$j;i++));	
		do



			if [[ `echo "$num/$i" | bc` -eq 0 ]];
			then

			f=$(($f+1))

			fi

		done

		if [[ $f -eq 1 ]]
		then

		echo " $j is a prime number "
		f=0;

		fi

	elif [[ $j -lt 2 ]];
	then

		echo " sorry  enter a number greater than 1 "

	fi

done

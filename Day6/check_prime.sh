#!/usr/bin/bash

read -p " Enter any number n to check if it is prime  "  num

f=0

if [[ $num -gt 1 ]];
then

	for ((i=2;i<=$num;i++));	
	do



	if [[ `echo "$num/$i" | bc` -eq 0 ]];
	then

	f=$(($f+1))

	fi

	done

	if [[ $f -eq 1 ]]
	then

	echo " $num is a prime number "

	elif [[ $f -gt 1 ]]

	echo " $num is not a prime number  "

	fi

elif [[ $num -lt 2 ]];
then

	echo " sorry  enter a number greater than 1 "

fi

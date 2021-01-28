#!/usr/bin/bash 

f=true
while [ $f ]

do

	rand1=$((RANDOM % 7))

	rand2=$((RANDOM % 7))


	if [[ $rand1 -gt 0 && $rand2 -gt 0 ]]
	then
		sum=$(( $rand1 + $rand2))
		echo "sum of two random dice numbers is $sum"
		f=false
	else
		f=true

	fi
done

#!/usr/bin/bash

echo "THIS PROGRAM WILL FIND THE MAGIC NUMBER "

f=" "


min =0;
max=100;
c=$((max/2))

echo " Think of a number between 0 and 100 "


while [[ $f != y || $f != Y ]];
do

	
	
	
	

	read -p " enter y/Y , yes if  your magic number is = $c , else enter n/N  for NO  " f

	if [[ $f != y || $f != Y ]];
	then 
		
		read -p " is your magic number greater than $c enter y/Y if YES , n/N if  NO  " read1
		
		if [[ $read1 == y || $read1 == Y   ]]; then

			$k=$(($c - $min))
			$c=$(($c+($k)/2))
			$min=$(($min + $k))
			
		elif [[ $read1 == n || $read1 == N ]]; then

			$k=$(($c - $min))
			
			$c=$(($c - ($k/2)))
			$max=$(($max - $k))
			
			
		fi	

	elif [[ $f == Y || $f == y ]]; then 
		
		echo " Congrats we found your magic number "
	fi
done



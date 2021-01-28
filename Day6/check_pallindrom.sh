#!/usr/bin/bash

read -p " enter any two numbers to check if they are pallindroms " r1  r2


function check_pallindrom() {

	

	num=$1
	k=$num

	local rev=0
	
	while [	$k -gt 0 ];
	do

		u=$(($k % 10))
		rev=$(($rev + $u))
		rev=$(($rev * 10))
		
		k=$(($k/10))

	done
	
	rev=$(($rev/10))

	

	if [ $rev -eq $num ]; then 

		echo "$num is pallindrom "
	else


		echo " $num is not pallindrom "


	fi
}



check_pallindrom $r1
check_pallindrom $r2

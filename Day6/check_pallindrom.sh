#!/usr/bin/bash

read -p " enter any two numbers to check if they are pallindroms " r1  r2


function check_pallindrom() {

	$1=num
	k=$num
	local rev
	while [	$num -gt 0 ];
	do
		k=$(( $k % 10 ))
		rev=$(($rev + $k))
		rev=$(($rev * 10))
		
		k=$((k/10))

	done

	if [ $rev -eq $num ]; then 

		echo "$num is pallindrom "
	fi
}



check_pallindrom($r1)
check_pallindrom($r2)

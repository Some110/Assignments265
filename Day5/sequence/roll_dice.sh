#!/usr/bin/bash

read -p "how many times do you want to roll the dice"  t

for ((i=1;i<=t;i++));

do

	rand=$((RANDOM % 7))


	if [[ $rand -gt 0 ]]
	then

		echo "$rand"

	elif [[ $rand -eq 0 ]]
	
		echo "5"

	fi

done

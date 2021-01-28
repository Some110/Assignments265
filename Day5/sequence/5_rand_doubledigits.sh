#!/usr/bin/bash

for ((i=1;i<=5;i++));
do

	rand=$((RANDOM % 100))

	if [[ $rand -gt 9 ]]
	then

	echo $rand

	fi


done

#!/usr/bin/bash


count=0

sum=0;

avg=0

while [ $count <=4 ]
do
	rand=$((RANDOM))
	
	if [[ $rand -gt 9 && $rand -lt 100 ]]
	then
		sum=$(($sum + $rand))
		count=$(($count+1)) 
	fi

done


avg=$(($sum/5))


echo "the sum of the 5 random numbers is $sum"

echo "the avg of the 5 random numbers is $avg"

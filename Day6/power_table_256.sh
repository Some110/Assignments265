#!/usr/bin/bash 

read -p "Enter any number n to print the power table of 2^n  " power

for ((i=1;i<=$power;i++));
do

p=`echo "2^$i" | bc`

if [[ $p -eq 256 ]];
then 
$i=$(($power+1))

fi

echo "2^ $i= $p  "


done


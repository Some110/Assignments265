#!/usr/bin/bash 

read -p "Enter any number n to print the nth Harmonic number  " number

for ((i=1;i<=number;i++));
do

p=$(($p +  `echo "1/$i" | bc`))


done

echo " The $number th Harmonic number is = $p "



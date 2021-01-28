#!/usr/bin/bash -x

read -p "Enter any number n to print the power table of 2^n  " power

for ((i=1;i<=n;i++));
do

p=`echo "2^$i" | bc`

echo "2^ $i= $p  "


done


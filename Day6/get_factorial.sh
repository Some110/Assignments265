#!/usr/bin/bashmu
echo " THIS PROGRAM WILL PRINT 	THE FACTORIAL OF A NUMBER  "

read -p " Enter any NUMBER to print its factorial   "  num1 

f=0
p=1;

for ((j=2;j<=$num1;j++));
then

	p=$(( $p * $j ))
	

done

echo "THE FACTORIAL OF $num1 = $p"

#!usr/bin/bash

echo " THIS PROGRAM FINDS OUT NUMBERS WHICH HAVE REPEATED DIGITS WITHIN THE RANGE 0 - 100 "



count=0

for(i=1;i<100;i++)
do

	if[ $i % 11 -eq 0 ];then

		arr1[$count]=$i

		count=$(($count+1))
	fi

done

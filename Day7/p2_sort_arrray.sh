#!/usr/bin/bash

counter=0

read  -p "enter number of random numbers to enter in the array " size

while [ $counter -lt $size ];
        do

                rand=$((RANDOM % 1000 ))

                if [[ $rand -lt 100  ]];
                then

                        rand=$(($rand+100))

                fi      
		
		arr1[$counter]=$rand
		counter=$(($counter + 1))

	done


function  Selection_sort()  {
	
	arr=$1

	for ((i=0; i<=$2 ; i++))
	do
		
		for ((j=0;j<=$2 ;j++))
		do
		
			if  [ $arr[j] -gt $arr[j+1] ];then
				
				temp=$arr[j+1]
				arr[j+1]=$arr[j]
				arr[j]=$temp
			fi
		done
		
	done 
	
	echo $arr

}


arr2=Selection_sort $arr1

echo  " Second smallest number is  $arr2[1] "

echo  " second largest number  is $arr2[$(($size - 2)) ] "






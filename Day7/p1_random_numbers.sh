#!/usr/bin/bash

counter=0

while [ $counter -lt 10 ];
        do

                rand=$((RANDOM % 1000 ))

                if [[ $rand -lt 100  ]];
                then

                        rand=$(($rand+100))

                fi      
		
		arr1[$counter]=$rand
		counter=$(($counter + 1))

	done


count_max=0
count_min=0

f=true
f1=0


while [ $f  ];
do
	for ((i=0;i<10;i++));
	do
		m=arr1[ $i ]
		for ((j=0;j<10;j++));
		do
			if [[ $m -gt  arr1[$j] ]];then
			
				count_max=$(($count_max + 1))


			elif [[ $m -lt arr1[$j] ]]
				
				count_min=$(($count_min + 1)) 

			
			fi
		done


		if [[ $count_max -eq 9  ]];then

			echo  "arr1[$i] is the 2nd maximum number "
			f1=$(($f1 +1))
			break

		elif [[ $count_min -eq 9 ]];then
	
			echo "arr1[$i] is the 2nd minimum number  "
			f1=$(($f1 + 1))
			break


		else  
			$count_max=0;
			$count_min=0;



		fi
	done

	if [[ $f1 -eq 2 ]]; then

		f=false	
	fi


	
done

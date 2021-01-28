#!/usr/bin/bash



declare -A dict1
f1=1

while [ $f1 -eq 1 ]; 
do

	rand=$(( RANDOM % 7 ))
	
	if [ $rand -gt 0 ];then
	


		if [[ -v dict1[$rand] ]];then

			if [[ ${dict1[$rand]} -eq 10 ]];then

				f1=0;
				echo " $rand has come 10 times"

			elif [ ${dict1[$rand]} -lt 10 ];then

				dict1[$rand]=$((${dict1[$rand]}+1))
				
				if [[ ${dict1[$rand]} -eq 10 ]];then

					f1=0;
                                echo " $rand has come 10 times"

				
				fi


			fi

		else

			dict1[$rand]=1
		
		fi

	fi

done


echo ${!dict1[@]}

echo ${dict1[@]}

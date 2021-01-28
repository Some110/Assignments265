#!/usr/bin /bash



read -p " Enter any number to find its prime factors  " r1




 

function  check_prime() {



	for ((i=2; i<=$1; i++)); 
	do

		if [[ $i -gt 1 ]]

		then

        		for ((k=2;k<=$i;k++));        
        		do



        		if [[  $(($i % $k)) -eq 0  ]];
        		then

        		f=$(($f+1))

        		fi

        	done

       		if [[ $f -eq 1 ]];
        	then
			

	        	echo 1

		else 

			echo 0

       		 fi


	done


}

count2=0
arr1[count2]=$r1

for ((j=0;j<$r1;j++)) {
do

	count2=$(($count + 1))

	if [ check_prime($j) -eq 1 ] ;
		

		arr1[$count]=$j


	fi

done


count3=1
g=$r1

count4=-1

arr2[0]=0

while [ true ];
do

	if [ $g % arr1[$count3] -eq 0 ]; then
		
		count4=$(($count4+1))

		arr2[$count4]=arr1[$count3]


		var=$(($g / $arr1[$count3]))

		if [ check_prime($var)  -eq 1 ];then
			
			

			arr2[$(($count4+1))]=$var
			
			break

		elif [ check_prime($var) -eq 0  ];then

			
			
			g=$var

			count3=0
		fi

	

	fi

	count3=$((count3+1))




done


#add condition for the quotient  being furthur factorized

# make condition  that the entered  number cannot be factorized by primes , limit the while  loop /count3 

# check the conditions with mathematical theory

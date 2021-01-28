
#!/usr/bin/bash

read -p " enter any numbers to check if they are prime and its pallindrom is also prime " r1


function check_prime() {

	$1=num
	
	f=0

	if [[ $num -gt 1 ]];

	then

        	for ((i=2;i<=$num;i++));        
        	do



        		if [[ $(($num % $i)) -eq 0 ]];
        		then

        		f=$(($f+1))

        		fi

        	done

        	if [[ $f -eq 1 ]]
        	then

        	echo " $num is a prime number "

        	elif [[ $f -gt 1 ]]

        	echo " $num is not a prime number  "

        	fi
	fi

}





function get_pallindrom() {

	$1=num
	k=$num
	local rev
	while [	$k -gt 0 ];
	do
		k=$(( $k % 10 ))
		rev=$(($rev + $k))
		rev=$(($rev * 10))
		
		k=$(($k/10))

	done

	echo "$rev"
}



check_prime($r1)
check_prime(get_pallindrom($r1))

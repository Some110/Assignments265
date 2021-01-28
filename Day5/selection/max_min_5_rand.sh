#!/usr/bin/bash

 echo "THIS PROGRAM PRINTS MAXIMUM AND MINIMUM OF 5 RANDOM 3 DIGIT NUMBER"
        echo "   "

        counter=1
        max=0
        min=0

        while [ $counter -le 5 ];
        do

                rand=$((RANDOM % 1000 ))

                if [[ $rand -lt 100  ]];
                then

                        rand=$(($rand+100))

                fi      


                if [[ $min -eq 0 ]];
                then

                min=$rand

                fi

                if [[ $max -lt $rand ]];
                then

                        max=$rand

                fi

                if [[ $rand -lt $min ]];
                then
                        min=$rand


                fi
                counter=$(($counter+1))
        done

        echo "largest random number is $max"

        echo "Smallest random number is $min"

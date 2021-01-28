#!/usr/bin/bash 







 echo "THIS PROGRAM WILL FLIP A COIN "
echo " "
read -p "press f to flip coin " flip

while [ $flip == f ]
do
        echo " .... ... FLIPPING COIN ......"
        rand=$((RANDOM % 2))

        if [[ $rand -eq 0 ]];
        then
                echo "TAILS"

        else
                echo "HEAD"
        fi

        read -p "press q to quit or f to flip again" flip2
        flip=$flip2
done

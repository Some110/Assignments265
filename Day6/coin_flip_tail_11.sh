#!/usr/bin/bash


 echo "THIS PROGRAM WILL FLIP A COIN "
echo " "
read -p "press f to flip coin " flip

headc=0
tailc=0

while [ $flip == f && $headc -lt 11 && $tailc -lt 11 ];
do
        echo " .... ... FLIPPING COIN ......"
        rand=$((RANDOM % 2))

        if [[ $rand -eq 0 ]];
        then
                echo "TAILS"
		$(($tailc++))

        else
                echo "HEAD"
		$(($headc++))
        fi

        read -p "press q to quit or f to flip again" flip2
        flip=$flip2
done



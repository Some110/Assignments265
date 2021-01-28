#!/usr/bin/bash 

 echo " THIS PROGRAM WILL TAKE ANY SINGLE DIGIT NUMBER AND PRINT IT IN WORDS "   

        
read -p "enter any single digit number" digit

        

case $digit in 

        1)
        echo "One"
        ;;
        2)
        echo "TWO"
        ;;
        3)
        echo "THREE"
        ;;
        4)
        echo "FOUR"
        ;;
        5)
        echo "FIVE"
        ;;
        6)
        echo "SIX"
        ;;
        7)
        echo "SEVEN"
	;;
	8)
        echo "EIGHT"
        ;;
        9)
        echo "NINE"
        ;;
        0)
        echo "ZERO"
        ;;      
        *) 
        echo "NOT A SINGLE DIGIT NUMBER"
	;;
esac

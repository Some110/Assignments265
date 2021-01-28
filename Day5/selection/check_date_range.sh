#!/usr/bin/bash 

echo "THIS PROGRAM WILL CHECK WHETHER THE ENTERED DATE IS WITH MARCH 20 TO JUNE 20 "
        echo "  "

read -p "enter date in the following format day/month/year" date
day=`echo $date | awk -F/ '{print $1}'`
month=`echo $date | awk -F/ '{print $2}'`

if [[ $month -gt 2 && $month -lt 7 && $date -le 20 ]];
then
        echo "TRUE"
else
        echo "FALSE"

fi


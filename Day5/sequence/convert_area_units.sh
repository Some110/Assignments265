#!/usr/bin/bash

read -p	"1> inch to feet  
	 2> feet sq to metre sq
	 3> feet sq to acres"  userinput


case $userinput in
	1)

	read -p " enter inches  " inches
	ft=$((1/12*$inches))
	echo "$ft feet"
	;;

	2)

	read -p " enter length  " length
	read -p " enter breath "  breath
	length=$(($length*0.3))
	breath=$(($breath*0.3))
	area=$(($length * $breath))
	echo "area in meters $area"
	;;

	3)

	read -p "enter length in feet " length
	read -p "enter breath in feet " breath
	area=$(($length * $breath))
	area=$(($area*1/43560))
	echo "area in acres is $area"
	;;

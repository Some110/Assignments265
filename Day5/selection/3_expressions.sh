#!/usr/bin/bash


echo " THIS PROGRAM WILL TAKE 3 INPUTS AND CALCULATE 3 EXPRESSIONS , EXP1 = (a+b)*c , EXP2 = (a % b) +c ,EXP3 = c+(a/b) , EXP4= (a+b)+c "
echo " "
read -p "enter any 3 space separated  numbers "  a b c

exp1=$(( ($a+$b)*$c ))
exp3=$(( $c+($a/$b) ))
exp2=$((($a % $b)+ $c ))
exp4=$(( ($a*$b)+ $c ))


max=0
min=0
exp_min=" "
exp_max=" "


if [ $exp1 -lt $exp2 ]
then
        min=$exp1
        exp_min="EXP1"

elif [ $exp2 -lt $exp1  ]
then
        min=$exp2
        exp_min="EXP2"
fi

if [ $exp3 -lt $min  ]
then 
        min=$exp3
        exp_min="EXP3"

elif [ $exp4 -lt $min ]
then
        min=$exp4
        exp_min="EXP4"
fi

 if [ $exp1 -lt $exp2 ]
then
        max=$exp2
        exp_max="EXP2"
elif [ $exp2 -lt $exp1  ]
then
        max=$exp1
        exp_max="EXP1"
fi

if [ $exp3 -lt $min  ]
then 
        max=$exp3
        exp_max="EXP3"

elif [ $exp4 -lt $min ]
then
        max=$exp4
        exp_max="EXP4" 
fi


echo " maximum is $exp_max = $max "
echo " minimum is $exp_min = $min  " 



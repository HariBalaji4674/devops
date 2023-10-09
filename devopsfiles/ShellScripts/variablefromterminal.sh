#!/bin/bash

num1=$1
num2=$2

sum=`expr $num1 + $num2`
sum2=$(expr $num1 + $num2)
sum3=$(($num1 + $num2))

echo " ${sum} is sum of ${num1} and ${num2} "
echo " ${sum2} is sum of ${num1} and ${num2} "
echo " ${sum3} is sum of ${num1} and ${num2} "
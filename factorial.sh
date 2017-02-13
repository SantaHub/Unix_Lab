#!/bin/sh
echo "Enter the Number"
read a

sum=1
for ((j=1;j<=a;j++))
do
sum=`echo $sum*$j | bc`
done

echo "sum " $sum

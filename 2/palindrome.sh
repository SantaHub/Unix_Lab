#!/usr/bin/sh

echo "Enter the number to be checked"
read a
t=$a
n=0

while [ $a -gt 0 ]
	do
	r=`echo $a%10 |bc`
	n=`echo $n*10 |bc `	
	n=`echo $n+$r |bc `	
	a=`echo $a/10 |bc `	
done

if [ $n == $t ]
	then
	echo "The number is palindrome"
	exit 0
fi
echo "The number is not plaindrome"

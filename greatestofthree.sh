#!/usr/bin/sh
echo Enter the three numbers
read a b c

l=$a
if [ $l -lt $b ]
	then
	l=$b
fi
if [ $l -lt $c ]
	then
	l=$c
fi
echo "The greatest number is $l"
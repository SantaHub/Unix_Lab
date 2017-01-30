#!/usr/bin/sh
echo Enter the units of electricity
read a

c=100
if [ $a -lt 100 ]
	then
	c=100
elif [ $a -lt 200 ] 
	then
	c=200
elif [ $a -gt 200 ] 
	then
	c=400
fi

cost=`echo $a*$c |bc`
echo $cost

#!/usr/bin/sh
#read a b c
echo ENter the marks 
read a b c
t=`echo $a+$b+$c | bc `
avg=`echo $t/3|bc`

g=3

 if [ $avg -lt 40 ]
 	then
 	g=0

elif [ $avg -lt 80 ]
	then
	g=1
else
	g=3
fi

case $g in 
	0)
		echo "The student has failed"
	;;
	1)
		echo "The student have passed satisfactorily"
	;;
	3)
		echo "The student has passd with distinction"
	;;
esac	


echo -e "1.ADD \n 2.SUBTRACT \n 3. MULTIPLY\n  4.DIVIDE"
echo -e "5.SINE \n 6.COSINE \n 7.SQRT \n 8.LOG\n 9.POWER \n10.EXPONENTS"
read ch
case $ch in

1) echo "Enter a"
   read a
   echo "Enter b"
   read b
   sum=`expr $a + $b`
   echo "Sum is: $sum";;

2) echo "Enter a"
   read a
   echo "Enter b"
   read b
   sum=`expr $a - $b`
   echo "Difference is: $sum";;

3) echo "Enter a"
   read a
   echo "Enter b"
   read b
   sum=`expr $a \* $b`
   echo "Product is: $sum";;

4) echo "Enter a"
   read a
   echo "Enter b"
   read b
   sum=`expr $a / $b`
   echo "quotient is: $sum";;

5) echo "Enter degree value"
   read d
   a=0.01745
   temp=`echo $a \* $d|bc`
   result=`echo "scale=2;s($temp)"|bc -l`
   echo "Answer: $result";;

6) echo "Enter degree value"
   read d
   a=0.01745
   temp=`echo $a \* $d|bc`
   result=`echo "scale=2;c($temp)"|bc -l`
   echo "Answer: $result";;

7) echo "Enter value"
   read d
 result=`echo "scale=2;sqrt($d)"|bc -l`
   echo "Answer: $result";;


8) echo "Enter degree value"
   read d
   a=0.01745
   temp=`echo $a \* $d|bc`
   result=`echo "scale=2;l($temp)"|bc -l`
   echo "Answer: $result";;

9) echo "Enter  value"
   read d
   echo "Enter power"
   read p
   var=`echo $d^$p | bc`
   echo "Answer: $var";;

10) echo "Enter  value"
   read d
   var=`echo "scale=2;e($d)"|bc -l`
   echo "Answer: $var";;


esac


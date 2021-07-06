echo"SCIENTIFIC CALCULATOR"
echo "-------------------------------------"
echo "1.ADD  2.SUBTRACT  3. MULTIPLY  4.DIVIDE"
echo "5.SINE  6.COSINE  7.SQRT  8.LOG 9.POWER 10.EXPONENTS"
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


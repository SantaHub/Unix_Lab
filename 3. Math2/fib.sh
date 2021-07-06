echo "Fibonacci"

echo " Enter the limit : "
read n
f1=0
f2=1
f3=1
echo -n " fibonacci series : $f1 $f2 "
for ((i=2;i<$n;i++))
do
f3=`expr $f1 + $f2`
f1=$f2
f2=$f3

echo -n " $f3"
done


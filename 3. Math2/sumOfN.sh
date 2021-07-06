echo "Enter Fibinocci number"
read n

a=1
c=0
b=1
echo "1"
echo "1"
for ((i=3;i<=n;i++))
do
 c=`echo $a+$b |bc`
 a=$b
 b=$c
 echo $c
done  

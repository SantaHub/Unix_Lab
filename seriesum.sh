echo ENter the number 
read a

n=`echo $a+1 |bc`
n=`echo $n*$a | bc`
n=`echo $n/2 | bc`

echo $n

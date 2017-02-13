echo "multiplication table"
echo "enter number"
read num
echo "values of limit:"
read lim
echo "multiplication table of $num is :"
for((i=1;i<=lim;i++))
do
sum=`expr $num \* $i`
echo " $num x $i= $sum"
done 

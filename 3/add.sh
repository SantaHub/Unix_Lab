echo 'Enter the first number'
read a
echo 'Enter the second number'
read num
sum=`echo $a+$num |bc `
echo 'Sum of '$a' and '$num' is' $sum

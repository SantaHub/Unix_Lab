Add()
{
echo "Enter Book $i Name : "
read name[$i]
echo "Enter Book Number"
read bookno[$i]
echo "Enter author Book$i"
read author[$i]
echo "Enter price for Book$i"
read price[$i]
echo " Number of Copies"
read copies[$i]
}

display()
{
echo -e "${name[$i]} \t ${bookno[$i]} \t ${author[$i]} \t\t ${price[$i]} \t ${copies[$i]}"
}

issue() {
echo "Enter the book number which is issued"
read j
copies[$j]=`echo "${copies[$j]}-1"|bc`
}

y=1
while [ $y -eq 1 ]
do
echo "1.Add Book"
echo "2.Display Book"
echo "3.Enter Issued/Not issued"
echo "4. Exit"

echo "Enter your choice"
read c

case $c in
1)
echo "Enter the number of Books:"
read n
for i in `seq 1 $n`
do
Add
done;;

2)
echo -e "Name \t BookNo \t Author \t price \t Issued "
for i in `seq 1 $n`
do
display
done;;

3)
issue
;;

4)
exit;;

esac
done
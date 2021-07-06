echo "enter the word"
read a
echo "Enter file name "
read f
echo `grep $a $f|wc -w`


while true #infinte loop
do
echo -e "\n\n	 1. DEC TO HEX AND BIN \n 2. HEX TO Octal \n 3. Octal to HEX \n 4. BIN TO DEC AND HEX"
read ch

echo 'Enter the digit: '
read digit

case $ch in 
	1) printf ' Decimal %d \n Hexadecimal %x  \n ' $digit $digit;
		echo -n 'Binary '
		echo 'obase=2;'$digit | bc
	;;
	2) echo "Hexadecimal " $digit
		echo -n "Octal "
		echo "obase=8; ibase=16;" $digit | bc
	;;
	3) echo "Octal " $digit
		echo -n "Hexadecimal "
		echo "obase=16; ibase=8;"$digit | bc
	;;
	4) printf ' Decimal %d \n Hexadecimal %x \n Binary %s' $((2#$digit)) $((2#$digit)) $digit 
	;;
esac

done
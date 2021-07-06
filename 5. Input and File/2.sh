echo "Enter the word to find"
read a
echo "Enter the word to be replaced"
read b

sed 's/'$a'/'$b'/g' test.txt
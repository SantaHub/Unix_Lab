#!/usr/bin/sh

echo "Enter the alphabet"
read a
v=('a' 'e' 'i' 'o' 'u')
for i in "${v[@]}"
do
	if [ $i == $a ]
		then
		echo "The alphabet is a vowel"
		exit 0
	fi
done

echo "The alphabet is a consonant"

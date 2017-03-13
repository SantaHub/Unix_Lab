echo "Enter file name : "
read f

if [ -e $f ]
then
	echo "File Exists"
	if [ -r $f ]
	then
	echo "File readable"
	else
	echo "File not readable"
	fi

	if [ -w $f ]
	then
	echo "File writable"
	else
	echo "File not writable"
	fi

	if [ -x $f ]
	then
	echo "File executable"
	else
	echo "File not executable"
	fi

	if [ -f $f ]
	then
	echo "File is a regular file"
	else
	echo "File not regular file"
	fi

	if [ -d $f ]
	then
	echo "File is a directory"
	else
	echo "File not directory"
	fi

	if [ -s $f ]
	then
	echo "File size is non zero"
	else
	echo "File size is zero"
	fi

else
echo "File do not Exist"
fi
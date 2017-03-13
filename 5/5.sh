echo "Enter the UID : "
read a
echo -e  "\nName : "
cat /etc/passwd| grep $a | cut -f 1 -d ':'
echo -e "\nShell and Group Number : "
cat /etc/passwd| grep $a | cut -f 3 -d ':'
echo -e "\nHome dir :"
cat /etc/passwd| grep $a | cut -f 6 -d ':'
echo -e "\nGroup name :"
cat /etc/passwd| grep $a | cut -f 3 -d ':' | id -g -n 
echo -e "\nOther groups :"
cat /etc/passwd| grep $a | cut -f 1 -d ':'  |groups 


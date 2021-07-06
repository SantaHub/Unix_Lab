withdraw(){ 
if (($with > $currt)) 
then 
echo insufficient balance 
else 
currt=`expr $currt - $with` 
echo current balance :$currt 
fi 
} 

deposit() {
currt=`expr $depo + $currt` 
echo current balance in your account is :$currt 
}

balance() { 
echo your current balance is $currt 
}

echo Welcome 
flag=1 
currt=1000
while((flag==1)) 
do  
echo 1.DEPOSIT 2.WITHDRAW  3.BALANCE 
read op 
case $op in 
1) 
echo Enter amount you want to deposit into account 
read depo 
deposit $depo 
echo Do you want to continue? 0 or 1 
read flag 
;; 
2) 
echo Enter amount you want to withdraw from your account. 
read with 
withdraw $with 
echo Do you want to continue? 0 or 1 
read flag 
;; 
3) 
balance 
;; 
esac 
done	

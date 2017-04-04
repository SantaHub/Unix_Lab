#include<fcntl.h>
#include<stdio.h>
#include<sys/types.h>
void main(){
int fdptr[2];
int id=pipe(fdptr);
if(id==0){
printf("Pipe Created \n");
}
else{
printf("Pipe not Created \n");

}
char buf[100],buf2[100];
printf("Enter the String to be written : ");
scanf("%s",&buf);
write(fdptr[1],buf,sizeof(buf));
int pid=fork();
if(pid==0)
{
read(fdptr[0],buf2,10);
printf("String Read: %s \n",buf2);
}
}

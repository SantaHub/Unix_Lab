#include<fcntl.h>
#include<stdio.h>
#include<sys/types.h>
void main()
{
int id=mknod("pipe",0666,S_IFIFO);
if(id==0){
printf("Pipe Created \n ");

}
else{
printf("Pipe not created\n");
}
int fd=open("pipe",O_RDWR);
char buf[200];
printf("Enter String to be written : ");
scanf("%s",&buf);
write(fd,buf,sizeof(buf));

}

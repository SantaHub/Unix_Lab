#include<fcntl.h>
#include<stdio.h>
#include<sys/types.h>
#include<string.h>
void main()
{
int fd=open("pipe",O_RDWR);
char buf[100],buf2[100];
int fd2=read(fd,buf,10);
printf("String read from pipe:%s \n ",buf);
}


#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
int main()
{
        int fd,newfd,choice,byte,bytes;
        char buf[100];
        while(1){
                printf("choose\n1.create\n2.open\n3.write\n4.read\n5.close\n");
                scanf("%d",&choice);
                switch(choice){
                        case 1:
                        fd=creat("process.txt",0755);
                        printf("File created with fd: %d \n",fd);
                        break;

                        case 2:
                        fd=open("process.txt",O_RDWR);
                        printf("File opened with fd: %d\n",fd);
                        break;

                        case 3:
                        printf("enter data: ");
                        scanf("%s",buf);
                        byte = write(fd,buf,strlen(buf));
                        printf("bytes written: %d \n",byte);
                        lseek(fd,0,0);
                        break;

                        case 4:
                        newfd=dup(fd);
                        printf("The file descriptor table is deleted %d. And duplicate is created. %d \n",fd,newfd);
                        close(fd);
                        bytes = read(newfd,buf,sizeof(buf));
                        printf("%s \n",buf);
                        break;

                        case 5:
                        close(newfd);
                        printf("File closed with new fd: %d \n",newfd);
                        exit(1);
                }
        }
}

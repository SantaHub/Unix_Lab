#include <fcntl.h>
#include <stdio.h>
int main(){
	int id1,id2,id3,id4;
	id1= fork();
	printf("id value : %d\n",id1);
	if(id1==0) {
		printf("Child : Hello I am the B  process\n");
		printf("Child : Child.s PID: %d\n", getpid());
		printf("Child : Parent.s PID: %d\n", getppid());
	}
	
	else{ 
		printf("Parent : Hello I am the A process\n" ) ;
		printf("Parent : Parent.s PID: %d\n", getpid());
		printf("Parent : Child.s PID: %d\n", id1);
		id2= fork();
		printf("id value : %d\n",id2);
		if(id2==0){
			id3=fork();
			printf("id value : %d\n",id3);
			if(id3==0){ 
				printf("Child : Hello I am the D process\n");
				printf("Child : Child.s PID: %d\n", getpid());
				printf("Child : Parent.s PID: %d\n", getppid());
			}
			else {
				id4=fork();
				printf("id value : %d\n",id4);
				if (id4==0){ 
					printf("Child : Hello I am the E process\n");
					printf("Child : Child.s PID: %d\n", getpid());
					printf("Child : Parent.s PID: %d\n", getppid());
				}
				else { 
					printf("Parent : Hello I am the F process\n" ) ;
					printf("Parent : Parent.s PID: %d\n", getpid());
					printf("Parent : Child.s PID: %d\n", id4);
				}
			}	
		}
		else { 
			printf("Parent : Hello I am the C process\n" ) ;
			printf("Parent : Parent.s PID: %d\n", getpid());
			printf("Parent : Child.s PID: %d\n", id2);
		}
	}
	return 0;
}



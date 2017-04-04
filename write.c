#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>

int main ( ) {
	void *virAddr;
	char str[100];
	int i = 0;
	char *a;

	int shmid = shmget(10,50,IPC_CREAT|0666 );
	if (shmid == -1) {
		printf ( "\nUnable to create shared memory!\n" );
		return -1;
	}

	if (( virAddr = shmat(shmid, 0, 0 )) == (void *)-1 ) {
		printf ( "\nUnable to attach shared memory.\n" );
		return -1;
	}
	a = (char *)virAddr;

	printf ( "\nEnter a string: " );
	scanf("%s",str);

	printf ( "\nWriting to shared memory...\n" );	
	for ( i = 0; i < strlen(str); i++ ) {
		*a = str[i];
		a++;
	}
	*a = '\0';
	printf ( "Writing complete.\n\n" );

	return 0;
}

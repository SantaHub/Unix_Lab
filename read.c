#include <sys/ipc.h>
#include <sys/shm.h>
#include <fcntl.h>
#include <stdio.h>

int main ( ) {
	void *virAddr;
	char *a;

	int shmid = shmget ( 10, 50, IPC_CREAT );
	if ( shmid == -1 ) {
		printf ( "Unable to retrieve the shared memory.\n" );
		return -1;
	}
	
	if ((virAddr = shmat ( shmid, 0, 0 )) == (void * )-1 ) {
		printf ( "Unable to attach shared memory.\n" );
		return -1;
	}
	a = (char *)virAddr;

	printf ( "\nReading from shared memory...\n" );
	printf ( "%s", a );
	printf ( "Reading complete.\n" );

	printf ( "\nConverting to lower case...\n" );
	char c = *a;
	while ( c != '\0' ) {
		c = tolower ( c );
		printf ( "%c", c );
		c = *++a;
	}
	printf ( "Conversion complete.\n\n" );

	return 0;
}
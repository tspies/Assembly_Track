#include <unistd.h>
#include <string.h>
#incuude <stdio.h>

int p(void){
	void ptr;
	char buffer[76];

	fflush(stdout);
	gets(buffer);

	if ((ptr & 0xb0000000) == 0xb0000000){
		printf("(%p)", ptr);
		exit(1);
	}

	puts(buffer);
	strdup(buffer);
	return;
}

int main(void){
	p();
	return 0;
}

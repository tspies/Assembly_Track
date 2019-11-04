#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void	main(char **av, int ac){
	uid_t euid = geteuid();
	setresuid(euid, euid, euid);
	system("/bin/bash");
}

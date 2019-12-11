#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#define _GNU_SOURCE
#include <unistd.h>

int	main(int ac, char** av){
	
	 char *shell;
	 char *message = "No!\n";
	 char *args[2];
	 gid_t gid;
	 uid_t uid;

	if (atoi(av[1]) == 423){
		shell = strdup("bin/sh");
		gid = getegid();
		uid = geteuid();

		setresgid(gid, gid, gid);
		setresuid(uid, uid, uid);

		args[0] = "sh";
		args[1] = 0;
		execv("/bin/sh", args);
	}
	else
		fwrite(message, 1, 5, stderr);
	return 0;
}
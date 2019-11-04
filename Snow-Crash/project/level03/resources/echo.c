#include <unistd.h>
#include <sys/types.h>

int	main(void){
	gid_t gid;
	uid_t uid;
	gid = getegid();
	uid = geteuid();

	setresgid(gid, gid, gid);
	setresuid(uid, uid, uid);

	system("/usr/bin/env getflag");
	return(0);
}

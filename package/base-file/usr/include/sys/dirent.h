#ifndef _SYS_DIRENT_H
#define _SYS_DIRENT_H

#include <limits.h>

struct dirent {
	long		d_ino;
	off_t		d_off;
	unsigned short	d_reclen;
	char		d_name[NAME_MAX+1];
};

#endif

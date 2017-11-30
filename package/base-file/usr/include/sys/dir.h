#ifndef _SYS_DIR_H
#define _SYS_DIR_H

#include <limits.h>
#include <sys/types.h>

#ifndef DIRSIZ
#define DIRSIZ NAME_MAX
#endif

struct direct {
	ino_t d_ino;
	char d_name[NAME_MAX];
};

#endif

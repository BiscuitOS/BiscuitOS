#ifndef _SYS_TIMEB_H
#define _SYS_TIMEB_H

#include <sys/types.h>

struct timeb {
	time_t   time;
	unsigned short millitm;
	short    timezone;
	short    dstflag;
};

#endif /* _SYS_TIMEB_H */

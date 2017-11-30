#ifndef _LIMITS_H
#define _LIMITS_H

#define RAND_MAX 0x7ffffffd	/* don't ask - see rand.c */

#define CHAR_BIT 8
#define MB_LEN_MAX 1

#define SCHAR_MIN (-128)
#define SCHAR_MAX 127

#define UCHAR_MAX 255U

#ifdef __CHAR_UNSIGNED__
#define CHAR_MIN 0
#define CHAR_MAX UCHAR_MAX
#else
#define CHAR_MIN SCHAR_MIN
#define CHAR_MAX SCHAR_MAX
#endif

#define SHRT_MIN (-32768)
#define SHRT_MAX 32767

#define USHRT_MAX 65535U

#define INT_MIN (-2147483648)
#define INT_MAX 2147483647

#define UINT_MAX 4294967295U

#define LONG_MIN (-2147483648)
#define LONG_MAX 2147483647

#define ULONG_MAX 4294967295U

#define _POSIX_ARG_MAX 40960	/* exec() may have 40K worth of args */
#define _POSIX_CHILD_MAX   6	/* a process may have 6 children */
#define _POSIX_LINK_MAX    8	/* a file may have 8 links */
#define _POSIX_MAX_CANON 255	/* size of the canonical input queue */
#define _POSIX_MAX_INPUT 255	/* you can type 255 chars ahead */
#define _POSIX_NAME_MAX   14	/* a file name may have 14 chars */
#define _POSIX_NGROUPS_MAX 0	/* supplementary group IDs are optional */
#define _POSIX_OPEN_MAX   16	/* a process may have 16 files open */
#define _POSIX_PATH_MAX  255	/* a pathname may contain 255 chars */
#define _POSIX_PIPE_BUF  512	/* pipes writes of 512 bytes must be atomic */

#define NGROUPS_MAX        0	/* supplemental group IDs not available */
#define ARG_MAX        40960	/* # bytes of args + environ for exec() */
#define CHILD_MAX        999    /* no limit :-) */
#define OPEN_MAX          20	/* # open files a process may have */
#define LINK_MAX         127	/* # links a file may have */
#define MAX_CANON        255	/* size of the canonical input queue */
#define MAX_INPUT        255	/* size of the type-ahead buffer */
#define NAME_MAX          14	/* # chars in a file name */
#define PATH_MAX        1024	/* # chars in a path name */
#define PIPE_BUF        4095	/* # bytes in atomic write to a pipe */

#endif

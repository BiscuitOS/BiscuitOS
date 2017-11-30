/*
	<dirent.h> -- definitions for SVR3 directory access routines

	last edit:	25-Apr-1987	D A Gwyn

	Prerequisite:	<sys/types.h>
*/

/* NOTE! The actual routines by D A Gwyn aren't used in linux - I though
 * they were too complicated, so I wrote my own. I use the header files,
 * though, as I didn't know what should be in them.
 */

#include	<sys/types.h>
#include	<sys/dirent.h>

#define	DIRBUF		8192		/* buffer size for fs-indep. dirs */
	/* must in general be larger than the filesystem buffer size */

typedef struct
	{
	int	dd_fd;			/* file descriptor */
	int	dd_loc;			/* offset in block */
	int	dd_size;		/* amount of valid data */
	char	*dd_buf;		/* -> directory block */
	}	DIR;			/* stream data from opendir() */

extern DIR		*opendir();
extern struct dirent	*readdir();
extern off_t		telldir();
extern void		seekdir();
extern void		rewinddir();
extern int		closedir();

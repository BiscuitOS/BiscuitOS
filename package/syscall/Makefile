syscall-$(CONFIG_PK_SYS_MKDIR)		+= sys_mkdir/
syscall-$(CONFIG_PK_SYS_OPEN)		+= sys_open/
syscall-$(CONFIG_PK_SYS_WRITE)		+= sys_write/
syscall-$(CONFIG_PK_SYS_READ)		+= sys_read/
syscall-$(CONFIG_PK_SYS_MOUNT)		+= sys_mount/
syscall-$(CONFIG_PK_SYS_BRK)		+= sys_brk/
syscall-$(CONFIG_PK_SYS_CLOSE)		+= sys_close/
syscall-$(CONFIG_PK_SYS_EXIT)		+= sys_exit/
syscall-$(CONFIG_PK_SYS_FORK)		+= sys_fork/
syscall-$(CONFIG_PK_SYS_GETPID)		+= sys_getpid/
syscall-$(CONFIG_PK_SYS_CREAT)		+= sys_creat/
syscall-$(CONFIG_PK_SYS_LINK)		+= sys_link/
syscall-$(CONFIG_PK_SYS_UNLINK)		+= sys_unlink/
syscall-$(CONFIG_PK_SYS_EXECVE)		+= sys_execve/
syscall-$(CONFIG_PK_SYS_CHDIR)		+= sys_chdir/
syscall-$(CONFIG_PK_SYS_MKNOD)		+= sys_mknod/
syscall-$(CONFIG_PK_SYS_CHMOD)		+= sys_chmod/
syscall-$(CONFIG_PK_SYS_LSEEK)		+= sys_lseek/
syscall-$(CONFIG_PK_SYS_SETUID16)	+= sys_setuid16/
syscall-$(CONFIG_PK_SYS_GETUID16)	+= sys_getuid16/
syscall-$(CONFIG_PK_SYS_PAUSE)		+= sys_pause/
syscall-$(CONFIG_PK_SYS_ACCESS)		+= sys_access/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/%/Makefile, $(syscall-y))

include $(PACKAGE_MAKEDIR)

syscall-$(CONFIG_PK_SYS_MKDIR)		+= sys_mkdir/
syscall-$(CONFIG_PK_SYS_OPEN)		+= sys_open/
syscall-$(CONFIG_PK_SYS_WRITE)		+= sys_write/
syscall-$(CONFIG_PK_SYS_READ)		+= sys_read/
syscall-$(CONFIG_PK_SYS_MOUNT)		+= sys_mount/
syscall-$(CONFIG_PK_SYS_BRK)		+= sys_brk/
syscall-$(CONFIG_PK_SYS_CLOSE)		+= sys_close/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/%/Makefile, $(syscall-y))

include $(PACKAGE_MAKEDIR)

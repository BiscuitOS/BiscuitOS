statfs-$(CONFIG_PK_SYS_STATFS_C)		+= statfs_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_statfs/%/Makefile, $(statfs-y))

include $(PACKAGE_MAKEDIR)

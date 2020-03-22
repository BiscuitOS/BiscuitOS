fstatfs-$(CONFIG_PK_SYS_FSTATFS_C)		+= fstatfs_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_fstatfs/%/Makefile, $(fstatfs-y))

include $(PACKAGE_MAKEDIR)

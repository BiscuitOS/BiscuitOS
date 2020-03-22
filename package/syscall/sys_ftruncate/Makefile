ftruncate-$(CONFIG_PK_SYS_FTRUNCATE_C)		+= ftruncate_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_ftruncate/%/Makefile, $(ftruncate-y))

include $(PACKAGE_MAKEDIR)

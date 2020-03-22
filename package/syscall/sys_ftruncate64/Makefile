ftruncate64-$(CONFIG_PK_SYS_FTRUNCATE64_C)		+= ftruncate64_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_ftruncate64/%/Makefile, $(ftruncate64-y))

include $(PACKAGE_MAKEDIR)

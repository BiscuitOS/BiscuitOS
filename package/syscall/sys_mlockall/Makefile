mlockall-$(CONFIG_PK_SYS_MLOCKALL_C)		+= mlockall_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_mlockall/%/Makefile, $(mlockall-y))

include $(PACKAGE_MAKEDIR)

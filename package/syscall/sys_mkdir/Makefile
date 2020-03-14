mkdir-$(CONFIG_PK_SYS_MKDIR_C)		+= mkdir_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_mkdir/%/Makefile, $(mkdir-y))

include $(PACKAGE_MAKEDIR)

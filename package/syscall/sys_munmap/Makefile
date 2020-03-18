munmap-$(CONFIG_PK_SYS_MUNMAP_C)		+= munmap_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_munmap/%/Makefile, $(munmap-y))

include $(PACKAGE_MAKEDIR)

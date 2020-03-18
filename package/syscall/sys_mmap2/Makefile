mmap2-$(CONFIG_PK_SYS_MMAP2_C)		+= mmap2_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_mmap2/%/Makefile, $(mmap2-y))

include $(PACKAGE_MAKEDIR)

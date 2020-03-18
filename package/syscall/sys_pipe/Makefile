pipe-$(CONFIG_PK_SYS_PIPE_C)		+= pipe_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_pipe/%/Makefile, $(pipe-y))

include $(PACKAGE_MAKEDIR)

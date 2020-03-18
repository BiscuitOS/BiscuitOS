sigpending-$(CONFIG_PK_SYS_SIGPENDING_C)		+= sigpending_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_sigpending/%/Makefile, $(sigpending-y))

include $(PACKAGE_MAKEDIR)

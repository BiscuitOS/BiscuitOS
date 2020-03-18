getcwd-$(CONFIG_PK_SYS_GETCWD_C)		+= getcwd_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_getcwd/%/Makefile, $(getcwd-y))

include $(PACKAGE_MAKEDIR)

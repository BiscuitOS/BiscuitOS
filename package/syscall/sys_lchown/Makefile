lchown-$(CONFIG_PK_SYS_LCHOWN_C)		+= lchown_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_lchown/%/Makefile, $(lchown-y))

include $(PACKAGE_MAKEDIR)

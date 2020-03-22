hello_BiscuitOS-$(CONFIG_PK_SYS_HELLO_BISCUITOS_C)		+= hello_BiscuitOS_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_hello_BiscuitOS/%/Makefile, $(hello_BiscuitOS-y))

include $(PACKAGE_MAKEDIR)

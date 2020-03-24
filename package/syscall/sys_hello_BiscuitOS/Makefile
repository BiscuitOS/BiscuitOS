hello_BiscuitOS-$(CONFIG_PK_SYS_HELLO_BISCUITOS_C) += hello_BiscuitOS_common/
hello_BiscuitOS-$(CONFIG_PK_SYS_SYSCALL_DEFINE0)   += SYSCALL_DEFINE0_common/
hello_BiscuitOS-$(CONFIG_PK_SYS_SYSCALL_DEFINE1)   += SYSCALL_DEFINE1_common/
hello_BiscuitOS-$(CONFIG_PK_SYS_SYSCALL_DEFINE2)   += SYSCALL_DEFINE2_common/
hello_BiscuitOS-$(CONFIG_PK_SYS_SYSCALL_DEFINE3)   += SYSCALL_DEFINE3_common/
hello_BiscuitOS-$(CONFIG_PK_SYS_SYSCALL_DEFINE4)   += SYSCALL_DEFINE4_common/
hello_BiscuitOS-$(CONFIG_PK_SYS_SYSCALL_DEFINE5)   += SYSCALL_DEFINE5_common/
hello_BiscuitOS-$(CONFIG_PK_SYS_SYSCALL_DEFINE6)   += SYSCALL_DEFINE6_common/
hello_BiscuitOS-$(CONFIG_PK_SYS_SYSCALL_INTEGER)   += SYSCALL_Integer_common/
hello_BiscuitOS-$(CONFIG_PK_SYS_SYSCALL_STRINGS)   += SYSCALL_Strings_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_hello_BiscuitOS/%/Makefile, $(hello_BiscuitOS-y))

include $(PACKAGE_MAKEDIR)

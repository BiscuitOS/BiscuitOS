page-fault-$(CONFIG_PK_PAGE_FAULT_USER_ADDR_USERSPACE)	+= BiscuitOS-page-fault-user-address-on-userspace/
page-fault-$(CONFIG_PK_PAGE_FAULT_USER_ADDR_KERNEL)	+= BiscuitOS-page-fault-user-address-on-kernel/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/page-fault/%/Makefile, $(page-fault-y))

include $(PACKAGE_MAKEDIR)

BiscuitOS-OOM-$(CONFIG_PK_OOM_KERNEL)			+= BiscuitOS-OOM-kernel/
BiscuitOS-OOM-$(CONFIG_PK_OOM_USERSPACE)		+= BiscuitOS-OOM-userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/OOM/%/Makefile, $(BiscuitOS-OOM-y))

include $(PACKAGE_MAKEDIR)

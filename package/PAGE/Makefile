PAGE-$(CONFIG_PK_PAGE_ALLOC_KERNEL)		+= BiscuitOS-PAGE-kernel/
PAGE-$(CONFIG_PK_PAGE_ALLOC_USERSPACE)		+= BiscuitOS-PAGE-userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/PAGE/%/Makefile, $(PAGE-y))

include $(PACKAGE_MAKEDIR)

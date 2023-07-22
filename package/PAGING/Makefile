PAGING-$(CONFIG_PK_PAGING_DEMO)		+= BiscuitOS-PAGING/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/PAGING/%/Makefile, $(PAGING-y))

include $(PACKAGE_MAKEDIR)

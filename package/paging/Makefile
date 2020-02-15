paging-$(CONFIG_PK_PAGING_USERSPACE)		+= paging_userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/paging/%/Makefile, $(paging-y))

include $(PACKAGE_MAKEDIR)

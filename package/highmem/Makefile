highmem-$(CONFIG_PK_HIGHMEM_USERSPACE)		+= highmem_userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/highmem/%/Makefile, $(highmem-y))

include $(PACKAGE_MAKEDIR)

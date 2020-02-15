memblock-$(CONFIG_PK_MEMBLOCK_USERSPACE)	+= memblock_userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memblock/%/Makefile, $(memblock-y))

include $(PACKAGE_MAKEDIR)

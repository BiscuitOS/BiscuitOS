VMALLOC-$(CONFIG_PK_VMALLOC_2_6_12)		+= linux-2.6.12/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/VMALLOC/%/Makefile, $(VMALLOC-y))

include $(PACKAGE_MAKEDIR)

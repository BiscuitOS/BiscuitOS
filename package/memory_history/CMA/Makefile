slab-$(CONFIG_PK_SLAB_2_6_12)		+= linux-2.6.12/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/slab/%/Makefile, $(slab-y))

include $(PACKAGE_MAKEDIR)

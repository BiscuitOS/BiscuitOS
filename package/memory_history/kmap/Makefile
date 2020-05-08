kmap-$(CONFIG_PK_KMAP_2_6_12)		+= linux-2.6.12/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/kmap/%/Makefile, $(kmap-y))

include $(PACKAGE_MAKEDIR)

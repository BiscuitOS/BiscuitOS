fixmap-$(CONFIG_PK_FIXMAP_2_6_12)		+= linux-2.6.12/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/fixmap/%/Makefile, $(fixmap-y))

include $(PACKAGE_MAKEDIR)

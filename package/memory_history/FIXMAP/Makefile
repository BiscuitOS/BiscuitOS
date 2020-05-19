FIXMAP-$(CONFIG_PK_FIXMAP_2_6_12)		+= linux-2.6.12/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_12_1)		+= linux-2.6.12.1/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_12_2)		+= linux-2.6.12.2/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_12_3)		+= linux-2.6.12.3/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_12_4)		+= linux-2.6.12.4/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_12_5)		+= linux-2.6.12.5/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_12_6)		+= linux-2.6.12.6/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_13)		+= linux-2.6.13/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_13_1)		+= linux-2.6.13.1/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_14)		+= linux-2.6.14/
FIXMAP-$(CONFIG_PK_FIXMAP_2_6_15)		+= linux-2.6.15/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/FIXMAP/%/Makefile, $(FIXMAP-y))

include $(PACKAGE_MAKEDIR)

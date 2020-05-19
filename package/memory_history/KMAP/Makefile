KMAP-$(CONFIG_PK_KMAP_2_6_12)		+= linux-2.6.12/
KMAP-$(CONFIG_PK_KMAP_2_6_12_1)		+= linux-2.6.12.1/
KMAP-$(CONFIG_PK_KMAP_2_6_12_2)		+= linux-2.6.12.2/
KMAP-$(CONFIG_PK_KMAP_2_6_12_3)		+= linux-2.6.12.3/
KMAP-$(CONFIG_PK_KMAP_2_6_12_4)		+= linux-2.6.12.4/
KMAP-$(CONFIG_PK_KMAP_2_6_12_5)		+= linux-2.6.12.5/
KMAP-$(CONFIG_PK_KMAP_2_6_12_6)		+= linux-2.6.12.6/
KMAP-$(CONFIG_PK_KMAP_2_6_13)		+= linux-2.6.13/
KMAP-$(CONFIG_PK_KMAP_2_6_13_1)		+= linux-2.6.13.1/
KMAP-$(CONFIG_PK_KMAP_2_6_14)		+= linux-2.6.14/
KMAP-$(CONFIG_PK_KMAP_2_6_15)		+= linux-2.6.15/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/KMAP/%/Makefile, $(KMAP-y))

include $(PACKAGE_MAKEDIR)

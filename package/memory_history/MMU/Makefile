MMU-$(CONFIG_PK_MMU_2_6_12)		+= linux-2.6.12/
MMU-$(CONFIG_PK_MMU_2_6_12_1)		+= linux-2.6.12.1/
MMU-$(CONFIG_PK_MMU_2_6_12_2)		+= linux-2.6.12.2/
MMU-$(CONFIG_PK_MMU_2_6_12_3)		+= linux-2.6.12.3/
MMU-$(CONFIG_PK_MMU_2_6_12_4)		+= linux-2.6.12.4/
MMU-$(CONFIG_PK_MMU_2_6_12_5)		+= linux-2.6.12.5/
MMU-$(CONFIG_PK_MMU_2_6_12_6)		+= linux-2.6.12.6/
MMU-$(CONFIG_PK_MMU_2_6_13)		+= linux-2.6.13/
MMU-$(CONFIG_PK_MMU_2_6_13_1)		+= linux-2.6.13.1/
MMU-$(CONFIG_PK_MMU_2_6_14)		+= linux-2.6.14/
MMU-$(CONFIG_PK_MMU_2_6_15)		+= linux-2.6.15/
MMU-$(CONFIG_PK_MMU_2_6_16)		+= linux-2.6.16/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/MMU/%/Makefile, $(MMU-y))

include $(PACKAGE_MAKEDIR)

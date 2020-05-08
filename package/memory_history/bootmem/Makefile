bootmem-$(CONFIG_PK_BOOTMEM_2_6_12)		+= linux-2.6.12/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_12_1)		+= linux-2.6.12.1/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_12_2)		+= linux-2.6.12.2/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_12_3)		+= linux-2.6.12.3/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_12_4)		+= linux-2.6.12.4/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_12_5)		+= linux-2.6.12.5/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_12_6)		+= linux-2.6.12.6/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_13)		+= linux-2.6.13/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_13_1)		+= linux-2.6.13.1/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_14)		+= linux-2.6.14/
bootmem-$(CONFIG_PK_BOOTMEM_2_6_15)		+= linux-2.6.15/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/bootmem/%/Makefile, $(bootmem-y))

include $(PACKAGE_MAKEDIR)

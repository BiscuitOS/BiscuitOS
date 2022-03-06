GUN-GCC-$(CONFIG_PK_GUN_GCC_V9) 		+= BiscuitOS-GUN-GCC-V9/
GUN-GCC-$(CONFIG_PK_GUN_GCC_V9_ASCAN) 		+= BiscuitOS-GUN-GCC-V9-ASCAN/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/GUN-GCC/%/Makefile, $(GUN-GCC-y))

include $(PACKAGE_MAKEDIR)

BiscuitOS_Memory-$(CONFIG_PK_BISCUITOS_MEMORY_BASE) += BiscuitOS_Memory-Base/
BiscuitOS_Memory-$(CONFIG_PK_BISCUITOS_MEMORY_0_11) += BiscuitOS_Memory-0.11/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory_history/BiscuitOS/%/Makefile, $(BiscuitOS_Memory-y))

include $(PACKAGE_MAKEDIR)

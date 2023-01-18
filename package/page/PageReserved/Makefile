PageReserved-$(CONFIG_PK_PAGERESERVED_MEMBLOCK)			+= BiscuitOS-PageReserved-from-MEMBLOCK/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/page/PageReserved/%/Makefile, $(PageReserved-y))

include $(PACKAGE_MAKEDIR)

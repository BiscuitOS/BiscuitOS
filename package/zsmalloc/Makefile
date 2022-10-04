ZSMALLOC-$(CONFIG_PK_ZSMALLOC_KERNEL)		+= BiscuitOS-zsmalloc-kernel/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/zsmalloc/%/Makefile, $(ZSMALLOC-y))

include $(PACKAGE_MAKEDIR)

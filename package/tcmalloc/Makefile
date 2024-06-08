tcmalloc-$(CONFIG_PK_TCMALLOC_TOOLS)				+= tcmalloc/
tcmalloc-$(CONFIG_PK_TCMALLOC_APP)				+= BiscuitOS-TCMALLOC-APP/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/tcmalloc/%/Makefile, $(tcmalloc-y))

include $(PACKAGE_MAKEDIR)

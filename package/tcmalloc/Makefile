tcmalloc-$(CONFIG_PK_TCMALLOC_TOOLS)				+= tcmalloc/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/tcmalloc/%/Makefile, $(tcmalloc-y))

include $(PACKAGE_MAKEDIR)

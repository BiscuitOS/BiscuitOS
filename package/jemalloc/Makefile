jemalloc-$(CONFIG_PK_JEMALLOC_TOOLS)				+= jemalloc/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/jemalloc/%/Makefile, $(jemalloc-y))

include $(PACKAGE_MAKEDIR)

dr-$(CONFIG_PK_DEVRES_ALLOC)	+= devres_alloc/
dr-$(CONFIG_PK_DEVRES_FREE)	+= devres_free/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/dr/%/Makefile, $(dr-y))

include $(PACKAGE_MAKEDIR)

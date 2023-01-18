page-$(CONFIG_PK_PAGERESERVED)			+= PageReserved/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/page/%/Makefile, $(page-y))

include $(PACKAGE_MAKEDIR)

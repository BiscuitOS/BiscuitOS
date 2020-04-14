rculock-$(CONFIG_PK_RCULOCK_BASE)		+= rculock_base/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/lock/rculock/%/Makefile, $(rculock-y))

include $(PACKAGE_MAKEDIR)

buddy-$(CONFIG_PK_BUDDY_USERSPACE)	+= buddy_userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/buddy/%/Makefile, $(buddy-y))

include $(PACKAGE_MAKEDIR)

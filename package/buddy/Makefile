buddy-$(CONFIG_PK_BUDDY_USERSPACE)		+= buddy_userspace/
buddy-$(CONFIG_PK_BUDDY_HIGHMEM_USERSPACE)	+= buddy_highmem_userspace/
buddy-$(CONFIG_PK_PCP_USERSPACE)		+= PCP_userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/buddy/%/Makefile, $(buddy-y))

include $(PACKAGE_MAKEDIR)

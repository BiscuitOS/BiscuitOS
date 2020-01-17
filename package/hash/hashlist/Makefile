hashlist-$(CONFIG_PK_HLIST_BL)		+= hlist_bl/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/hash/hashlist/%/Makefile, $(hashlist-y))

include $(PACKAGE_MAKEDIR)

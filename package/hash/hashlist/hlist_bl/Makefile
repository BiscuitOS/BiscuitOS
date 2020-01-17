hlist_bl-$(CONFIG_PK_HLIST_BL_BASE)		+= hlist_bl_base/
hlist_bl-$(CONFIG_PK_HLIST_BL_ALLOC_SYS_HASH)	+= alloc_large_system_hash/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/hash/hashlist/hlist_bl/%/Makefile, $(hlist_bl-y))

include $(PACKAGE_MAKEDIR)

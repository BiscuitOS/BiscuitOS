slab-$(CONFIG_PK_KMEM_CACHE_USERCOPY)	+= KMEM_CACHE_USERCOPY/
slab-$(CONFIG_PK_KMEM_CACHE_CREATE_MOD)	+= kmem_cache_create_usercopy_mod/
slab-$(CONFIG_PK_KMEM_CACHE_CREATE_APP)	+= kmem_cache_create_usercopy_app/
slab-$(CONFIG_PK_KSTRDUP_CONST)		+= kstrdup_const/
slab-$(CONFIG_PK_KFREE_CONST)		+= kfree_const/
slab-$(CONFIG_PK_KMEMDUP)		+= kmemdup/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/slab/%/Makefile, $(slab-y))

include $(PACKAGE_MAKEDIR)

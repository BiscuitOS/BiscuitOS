slab-$(CONFIG_PK_KMEM_CACHE_USERCOPY)	+= KMEM_CACHE_USERCOPY/
slab-$(CONFIG_PK_KMEM_CACHE_CREATE_MOD)	+= kmem_cache_create_usercopy_mod/
slab-$(CONFIG_PK_KMEM_CACHE_CREATE_APP)	+= kmem_cache_create_usercopy_app/
slab-$(CONFIG_PK_KSTRDUP_CONST)		+= kstrdup_const/
slab-$(CONFIG_PK_KFREE_CONST)		+= kfree_const/
slab-$(CONFIG_PK_KMEMDUP)		+= kmemdup/
slab-$(CONFIG_PK___GETNAME)		+= __getname/
slab-$(CONFIG_PK___PUTNAME)		+= __putname/
slab-$(CONFIG_PK_KMEMDUP)		+= kmemdup/
slab-$(CONFIG_PK_SLUB_USERSPACE)	+= slub_userspace/
slab-$(CONFIG_PK_NAME_USERSPACE)	+= name_userspace/
slab-$(CONFIG_PK_KMALLOC_USERSPACE)	+= kmalloc_userspace/
slab-$(CONFIG_PK_KMEM_CACHE_USERSPACE)	+= kmem_cache_userspace/
slab-$(CONFIG_PK_STRNCPY_FROM_USER_APP)	+= strncpy_from_user_app/
slab-$(CONFIG_PK_STRNCPY_FROM_USER_MOD)	+= strncpy_from_user_mod/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/slab/%/Makefile, $(slab-y))

include $(PACKAGE_MAKEDIR)

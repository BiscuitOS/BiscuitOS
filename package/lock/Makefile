lock-$(CONFIG_PK_SEQLOCK)		+= seqlock/
lock-$(CONFIG_PK_RWLOCK)		+= rwlock/
lock-$(CONFIG_PK_RCULOCK)		+= rculock/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/lock/%/Makefile, $(lock-y))

include $(PACKAGE_MAKEDIR)

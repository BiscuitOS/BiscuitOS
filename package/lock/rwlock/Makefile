rwlock-$(CONFIG_PK_RWLOCK_BASE)		+= rwlock_base/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/lock/rwlock/%/Makefile, $(rwlock-y))

include $(PACKAGE_MAKEDIR)

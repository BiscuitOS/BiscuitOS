seqlock-$(CONFIG_PK_SEQLOCK_BASE)		+= seqlock_base/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/lock/seqlock/%/Makefile, $(seqlock-y))

include $(PACKAGE_MAKEDIR)

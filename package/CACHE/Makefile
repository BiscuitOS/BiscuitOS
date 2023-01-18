CACHE-$(CONFIG_PK_CACHE_INTEL_CMT_CAT)		+= BiscuitOS-Intel-CMT-CAT/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/CACHE/%/Makefile, $(CACHE-y))

include $(PACKAGE_MAKEDIR)

MADVISE-$(CONFIG_PK_MADVISE_KSM) 		+= BiscuitOS-madvise-KSM/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/madvise/%/Makefile, $(MADVISE-y))

include $(PACKAGE_MAKEDIR)

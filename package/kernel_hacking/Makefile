kernel_hacking-$(CONFIG_PK_KH_OFFSETOF)	+= offsetof/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/kernel_hacking/%/Makefile, $(kernel_hacking-y))

include $(PACKAGE_MAKEDIR)

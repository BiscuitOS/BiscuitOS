SWAP-$(CONFIG_PK_SWAP_MKSWAP_SWAPON)	+= BiscuitOS-mkswap-swapon/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/SWAP/%/Makefile, $(SWAP-y))

include $(PACKAGE_MAKEDIR)

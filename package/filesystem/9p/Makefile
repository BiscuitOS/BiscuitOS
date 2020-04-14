9p-$(CONFIG_PK_9P_BS)	+= 9p_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/9p/%/Makefile, $(9p-y))

include $(PACKAGE_MAKEDIR)

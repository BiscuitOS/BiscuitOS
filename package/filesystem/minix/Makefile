minix-$(CONFIG_PK_MINIX_BS)	+= minix_bs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/minix/%/Makefile, $(minix-y))

include $(PACKAGE_MAKEDIR)

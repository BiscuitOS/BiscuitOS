FS-$(CONFIG_FS_MINIX)       += minix/
FS-$(CONFIG_FS_EXT2)        += ext2/

FS_MAKEDIR := $(patsubst %/, $(srctree)/fs/%/Makefile, $(FS-y))

include $(FS_MAKEDIR)

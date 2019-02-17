FS-$(CONFIG_FS_EXT4)        += ext4/
FS-$(CONFIG_FS_EXT2)        += ext2/
FS-$(CONFIG_FS_MINIX)       += minix/
FS-$(CONFIG_FS_MSDOS)       += msdos/

FS_MAKEDIR := $(patsubst %/, $(srctree)/fs/%/Makefile, $(FS-y))

include $(FS_MAKEDIR)

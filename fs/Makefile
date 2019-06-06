FS-$(CONFIG_FS_EXT4)        += ext4/
FS-$(CONFIG_FS_EXT2)        += ext2/
FS-$(CONFIG_FS_MINIX)       += minix/
FS-$(CONFIG_FS_MSDOS)       += msdos/
FS-$(CONFIG_FS_XV6)	    += xv6/

FS_MAKEDIR := $(patsubst %/, $(srctree)/fs/%/Makefile, $(FS-y))

include $(FS_MAKEDIR)

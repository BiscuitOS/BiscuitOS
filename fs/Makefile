FS-$(CONFIG_FS_EXT4)        += ext4/

FS_MAKEDIR := $(patsubst %/, $(srctree)/fs/%/Makefile, $(FS-y))

include $(FS_MAKEDIR)

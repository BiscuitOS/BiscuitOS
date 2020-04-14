filesystem-$(CONFIG_PK_FS_TMPFS)		+= tmpfs/
filesystem-$(CONFIG_PK_FS_RAMFS)		+= ramfs/
filesystem-$(CONFIG_PK_FS_DEBUGFS)		+= debugfs/
filesystem-$(CONFIG_PK_FS_PROC)			+= proc/
filesystem-$(CONFIG_PK_FS_MINIX)		+= minix/
filesystem-$(CONFIG_PK_FS_SYSFS)		+= sysfs/
filesystem-$(CONFIG_PK_FS_BDEV)			+= bdev/
filesystem-$(CONFIG_PK_FS_9P)			+= 9p/
filesystem-$(CONFIG_PK_FS_ADFS)			+= adfs/
filesystem-$(CONFIG_PK_FS_AFFS)			+= affs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/%/Makefile, $(filesystem-y))

include $(PACKAGE_MAKEDIR)

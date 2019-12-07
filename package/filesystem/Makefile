filesystem-$(CONFIG_PK_FS_KERNFS)		+= kernfs/
filesystem-$(CONFIG_PK_FS_SYSFS)		+= sysfs/
filesystem-$(CONFIG_PK_FS_VFS)			+= vfs/
filesystem-$(CONFIG_PK_BISCUITOS_VFS)		+= bsvfs/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/%/Makefile, $(filesystem-y))

include $(PACKAGE_MAKEDIR)

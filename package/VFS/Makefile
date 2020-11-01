VFS-$(CONFIG_PK_VFS_ANON_FILE_KERNEL) 		+= Anonymous-file-kernel/
VFS-$(CONFIG_PK_VFS_ANON_FILE_USER) 		+= Anonymous-file-userspace/
VFS-$(CONFIG_PK_VFS_KERNEL_READ_UFILE) 		+= Kernel-read-Userspace-file/
VFS-$(CONFIG_PK_VFS_KERNEL_WRITE_UFILE) 	+= Kernel-write-Userspace-file/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/VFS/%/Makefile, $(VFS-y))

include $(PACKAGE_MAKEDIR)

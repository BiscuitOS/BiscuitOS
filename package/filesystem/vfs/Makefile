vfs-$(CONFIG_PK_FS_GET_FS_TYPE)		+= get_fs_type/
vfs-$(CONFIG_PK_FS_SGET)		+= sget/
vfs-$(CONFIG_PK_FS_NEW_INODE)		+= new_inode/
vfs-$(CONFIG_PK_FS_INODE_INIT_OWNER)	+= inode_init_owner/
vfs-$(CONFIG_PK_FS_D_ALLOC_ANON)	+= d_alloc_anon/
vfs-$(CONFIG_PK_FS_D_ALLOC)		+= d_alloc/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/vfs/%/Makefile, $(vfs-y))

include $(PACKAGE_MAKEDIR)

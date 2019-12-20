vfs-$(CONFIG_PK_FS_GET_FS_TYPE)		+= get_fs_type/
vfs-$(CONFIG_PK_FS_SGET)		+= sget/
vfs-$(CONFIG_PK_FS_NEW_INODE)		+= new_inode/
vfs-$(CONFIG_PK_FS_INODE_INIT_OWNER)	+= inode_init_owner/
vfs-$(CONFIG_PK_FS_D_ALLOC_ANON)	+= d_alloc_anon/
vfs-$(CONFIG_PK_FS_D_ALLOC)		+= d_alloc/
vfs-$(CONFIG_PK_USER_PATH_APP)		+= user_path_app/
vfs-$(CONFIG_PK_USER_PATH_MOD)		+= user_path_mod/
vfs-$(CONFIG_PK_USER_PATH_AT_EMPTY_APP)		+= user_path_at_empty_app/
vfs-$(CONFIG_PK_USER_PATH_AT_EMPTY_MOD)		+= user_path_at_empty_mod/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/filesystem/vfs/%/Makefile, $(vfs-y))

include $(PACKAGE_MAKEDIR)

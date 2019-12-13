FS-$(CONFIG_FS_EXT4)		+= ext4/
FS-$(CONFIG_FS_EXT2)		+= ext2/
FS-$(CONFIG_FS_MINIX)		+= minix/
FS-$(CONFIG_FS_MSDOS)		+= msdos/
FS-$(CONFIG_FS_XV6)		+= xv6/
FS-$(CONFIG_FS_APOLLO)		+= Apollo/
FS-$(CONFIG_FS_DEBIAN_LEGACY)	+= Debian/
FS-$(CONFIG_FS_BISCUITOS)	+= BiscuitOS/
FS-$(CONFIG_FS_BISCUITOS_ONLY)	+= BiscuitOS_only/
FS-$(CONFIG_FS_DEBIAN_SERVER)	+= Debian_Server/
FS-$(CONFIG_FS_DOCKER)		+= Docker/

FS_MAKEDIR := $(patsubst %/, $(srctree)/fs/%/Makefile, $(FS-y))

include $(FS_MAKEDIR)

chroot-$(CONFIG_PK_SYS_CHROOT_C)		+= chroot_common/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/sys_chroot/%/Makefile, $(chroot-y))

include $(PACKAGE_MAKEDIR)

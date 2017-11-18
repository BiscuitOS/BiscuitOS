HOST_TARGET-$(CONFIG_QEMU)                += qemu/
HOST_TARGET-$(CONFIG_HOST_MKFS_MINIX)     += mkfs.minix/


HOST_MAKEDIR := $(patsubst %/, $(srctree)/target/Host/%/Makefile, $(HOST_TARGET-y))

include $(HOST_MAKEDIR)

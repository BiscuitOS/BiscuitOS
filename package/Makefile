PACKAGE-$(CONFIG_PK_BINUTILS)           += binutils/
PACKAGE-$(CONFIG_PK_GCC)                += gcc/
PACKAGE-$(CONFIG_PK_QEMU_SYSTEM)        += qemu/
PACKAGE-$(CONFIG_PK_BUSYBOX)            += busybox/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/%/Makefile, $(PACKAGE-y))

include $(PACKAGE_MAKEDIR)

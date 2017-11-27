HOST_TARGET-$(CONFIG_QEMU)                += qemu/


HOST_MAKEDIR := $(patsubst %/, $(srctree)/target/Host/%/Makefile, $(HOST_TARGET-y))

include $(HOST_MAKEDIR)

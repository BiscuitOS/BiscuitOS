TARGET-$(CONFIG_KERNEL)             += kernel/

TARGET_MAKEDIR := $(patsubst %/, $(srctree)/target/%/Makefile, $(TARGET-y))

include $(TARGET_MAKEDIR)

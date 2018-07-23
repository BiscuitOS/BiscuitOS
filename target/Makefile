TARGET-$(CONFIG_KERNEL)             += kernel/
TARGET-y                            += package/

TARGET_MAKEDIR := $(patsubst %/, $(srctree)/target/%/Makefile, $(TARGET-y))

include $(TARGET_MAKEDIR)

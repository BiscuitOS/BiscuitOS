TARGET-$(CONFIG_KERNEL)             += kernel/
TARGET-y                            += package/
TARGET-y                            += Host/

TARGET_MAKEDIR := $(patsubst %/, $(srctree)/target/%/Makefile, $(TARGET-y))

include $(TARGET_MAKEDIR)

TOOLCHAIN-$(CONFIG_TOOL_ARM_GNUEABI)		+= arm-linux-gnueabi/
TOOLCHAIN-$(CONFIG_TOOL_ARM_NONE_GNUEABI)	+= arm-none-linux-gnueabi/
TOOLCHAIN-$(CONFIG_TOOL_ARM_GNUEABIHF)		+= arm-linux-gnueabihf/
TOOLCHAIN-$(CONFIG_TOOL_AARCH64)		+= aarch64-linux-gnu/
TOOLCHAIN-$(CONFIG_TOOL_RISCV64_GNU)		+= riscv64-linux-gnu/

TOOLCHAIN_MAKEDIR := $(patsubst %/, $(srctree)/toolchain/%/Makefile, $(TOOLCHAIN-y))

include $(TOOLCHAIN_MAKEDIR)

syscall-$(CONFIG_PK_OPEN)		+= open/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/%/Makefile, $(syscall-y))

include $(PACKAGE_MAKEDIR)

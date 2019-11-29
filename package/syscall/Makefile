syscall-$(CONFIG_PK_OPEN_KAPI)		+= open_kapi/
syscall-$(CONFIG_PK_OPEN_UAPI)		+= open_uapi/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/%/Makefile, $(syscall-y))

include $(PACKAGE_MAKEDIR)

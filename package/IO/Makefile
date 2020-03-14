IO-$(CONFIG_PK_IO_ASYNC)		+= Async/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/IO/%/Makefile, $(IO-y))

include $(PACKAGE_MAKEDIR)

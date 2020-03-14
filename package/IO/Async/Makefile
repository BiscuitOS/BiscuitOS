async-$(CONFIG_PK_SELECT_SOCKET)		+= select_socket/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/IO/Async/%/Makefile, $(async-y))

include $(PACKAGE_MAKEDIR)

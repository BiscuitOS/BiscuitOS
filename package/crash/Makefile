crash-$(CONFIG_PK_CRASH_TOOLS)				+= crash/
crash-$(CONFIG_PK_CRASH_FUNC_ARGS)			+= BiscuitOS-crash-register-with-func-argument/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/crash/%/Makefile, $(crash-y))

include $(PACKAGE_MAKEDIR)

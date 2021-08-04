crash-$(CONFIG_PK_CRASH_TOOLS)				+= crash/
crash-$(CONFIG_PK_CRASH_FUNC_ARGS)			+= BiscuitOS-crash-register-with-func-argument/
crash-$(CONFIG_PK_CRASH_PTOB)				+= BiscuitOS-crash-ptob/
crash-$(CONFIG_PK_CRASH_MOD)				+= BiscuitOS-crash-module-common/
crash-$(CONFIG_PK_CRASH_LIST)				+= BiscuitOS-crash-list-common/
crash-$(CONFIG_PK_CRASH_PTOV)				+= BiscuitOS-crash-ptov/
crash-$(CONFIG_PK_CRASH_BTOP)				+= BiscuitOS-crash-btop/
crash-$(CONFIG_PK_CRASH_VTOP_U)				+= BiscuitOS-crash-vtop-user-address/
crash-$(CONFIG_PK_CRASH_VTOP_U_PID)			+= BiscuitOS-crash-vtop-pid-user-address/
crash-$(CONFIG_PK_CRASH_VTOP_K)				+= BiscuitOS-crash-vtop-kernel-address/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/crash/%/Makefile, $(crash-y))

include $(PACKAGE_MAKEDIR)

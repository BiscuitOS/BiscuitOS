Debug-Stub-$(CONFIG_PK_DEBUG_STUB_QEMU)		+= BiscuitOS-debug-stub-QEMU/
Debug-Stub-$(CONFIG_PK_DEBUG_STUB_KERNEL)	+= BiscuitOS-debug-stub-Kernel/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/BiscuitOS-debug-stub/%/Makefile, $(Debug-Stub-y))

include $(PACKAGE_MAKEDIR)

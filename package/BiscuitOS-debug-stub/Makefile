Debug-Stub-$(CONFIG_PK_DEBUG_STUB_QEMU)			+= BiscuitOS-debug-stub-QEMU/
Debug-Stub-$(CONFIG_PK_DEBUG_STUB_KERNEL)		+= BiscuitOS-debug-stub-Kernel/
Debug-Stub-$(CONFIG_PK_DEBUG_MEMORY_FLUID)		+= BiscuitOS-MEMORY-FLUID/
Debug-Stub-$(CONFIG_PK_DEBUG_MEMORY_FLUID_KERNEL)	+= BiscuitOS-MEMORY-FLUID-KERNEL/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/BiscuitOS-debug-stub/%/Makefile, $(Debug-Stub-y))

include $(PACKAGE_MAKEDIR)

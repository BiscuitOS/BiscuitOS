MMU-$(CONFIG_PK_MMU_MEMORY_HOTPLUG_IN_C) 	+= Memory-Hotplug-in-C/
MMU-$(CONFIG_PK_MMU_MEMORY_HOTPLUG_AUTO) 	+= Memory-Hotplug-auto/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/MMU/%/Makefile, $(MMU-y))

include $(PACKAGE_MAKEDIR)

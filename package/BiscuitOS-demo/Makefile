BiscuitOS-demo-$(CONFIG_PK_KERNEL_DEMO) 		+= BiscuitOS-kernel/
BiscuitOS-demo-$(CONFIG_PK_MODULES_DEMO) 		+= BiscuitOS-modules/
BiscuitOS-demo-$(CONFIG_PK_MODULES_PROJECT_DEMO) 	+= BiscuitOS-modules-project/
BiscuitOS-demo-$(CONFIG_PK_BISCUITOS_APP_DEMO) 		+= BiscuitOS-Application/
BiscuitOS-demo-$(CONFIG_PK_BISCUITOS_APP_PROJ_DEMO) 	+= BiscuitOS-Application-project/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/BiscuitOS-demo/%/Makefile, $(BiscuitOS-demo-y))

include $(PACKAGE_MAKEDIR)

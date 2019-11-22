workqueue-$(CONFIG_PK_WQ_MOD)		+= workqueue_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/workqueue/%/Makefile, $(workqueue-y))

include $(PACKAGE_MAKEDIR)

UIO-$(CONFIG_PK_UIO_MEM_MOD)	+= UIO_mem_module/
UIO-$(CONFIG_PK_UIO_MEM_APP)	+= UIO_mem_app/
UIO-$(CONFIG_PK_UIO_INTR_MOD)	+= UIO_intr_module/
UIO-$(CONFIG_PK_UIO_INTR_APP)	+= UIO_intr_app/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/UIO/%/Makefile, $(UIO-y))

include $(PACKAGE_MAKEDIR)

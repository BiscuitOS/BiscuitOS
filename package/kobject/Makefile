kobject-$(CONFIG_PK_KOBJECT_CREATE_ADD)		+= kobject_create_and_add/
kobject-$(CONFIG_PK_KOBJECT_GET_PATH)		+= kobject_get_path/
kobject-$(CONFIG_PK_KOBJECT_GET)		+= kobject_get/
kobject-$(CONFIG_PK_KOBJECT_PUT)		+= kobject_put/
kobject-$(CONFIG_PK_KOBJECT_INIT)		+= kobject_init/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/kobject/%/Makefile, $(kobject-y))

include $(PACKAGE_MAKEDIR)

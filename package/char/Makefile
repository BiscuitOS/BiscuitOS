char-$(CONFIG_PK_CHAR_APP)	+= char_app/
char-$(CONFIG_PK_CHAR_MOD)	+= char_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/char/%/Makefile, $(char-y))

include $(PACKAGE_MAKEDIR)

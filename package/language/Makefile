language-$(CONFIG_PK_LANGUAGE_C)		+= C/
language-$(CONFIG_PK_LANGUAGE_CPP)		+= CPP/
language-$(CONFIG_PK_LANGUAGE_PYTHON)		+= Python/
language-$(CONFIG_PK_LANGUAGE_SHELL)		+= Shell/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/language/%/Makefile, $(language-y))

include $(PACKAGE_MAKEDIR)

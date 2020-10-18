BITMAP-$(CONFIG_PK_BITMAP_EMULATE_PID)	+= emulate-pid/
BITMAP-$(CONFIG_PK_BITMAP_LC_TRIE)	+= LC-trie/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/bitmap/%/Makefile, $(BITMAP-y))

include $(PACKAGE_MAKEDIR)

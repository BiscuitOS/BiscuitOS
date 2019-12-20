open-$(CONFIG_PK_OPEN_KAPI)		+= open_kapi/
open-$(CONFIG_PK_OPEN_UAPI)		+= open_uapi/
open-$(CONFIG_PK_OPEN_PATHLEN)		+= open_pathlen/
open-$(CONFIG_PK_OPEN_FLAGS)		+= open_flags/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/open/%/Makefile, $(open-y))

include $(PACKAGE_MAKEDIR)

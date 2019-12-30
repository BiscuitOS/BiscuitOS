open-$(CONFIG_PK_OPEN_KAPI)		+= open_kapi/
open-$(CONFIG_PK_OPEN_UAPI)		+= open_uapi/
open-$(CONFIG_PK_OPEN_PATHLEN)		+= open_pathlen/
open-$(CONFIG_PK_OPEN_FLAGS)		+= open_flags/
open-$(CONFIG_PK_OPEN_FLAGS_RDONLY)	+= open_flags_RDONLY/
open-$(CONFIG_PK_OPEN_FLAGS_WRONLY)	+= open_flags_WRONLY/
open-$(CONFIG_PK_OPEN_FLAGS_RDWR)	+= open_flags_RDWR/
open-$(CONFIG_PK_OPEN_FLAGS_TMPFILE)	+= open_flags_TMPFILE/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/syscall/open/%/Makefile, $(open-y))

include $(PACKAGE_MAKEDIR)

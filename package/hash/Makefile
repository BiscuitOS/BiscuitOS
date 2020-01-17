hash-$(CONFIG_PK_HLIST)				+= hashlist/
hash-$(CONFIG_PK_HASH_MIX)			+= HASH_MIX/
hash-$(CONFIG_PK_REPEAT_BYTE)			+= REPEAT_BYTE/
hash-$(CONFIG_PK_HASH_LOAD_UNALIGN)		+= load_unaligned_zeropad/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/hash/%/Makefile, $(hash-y))

include $(PACKAGE_MAKEDIR)

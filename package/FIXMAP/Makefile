FIXMAP-$(CONFIG_PK_FIXMAP_CLEAR_FIXMAP)			+= BiscuitOS-FIXMAP-clear_fixmap/
FIXMAP-$(CONFIG_PK_FIXMAP_FIX_TO_VIRT)			+= BiscuitOS-FIXMAP-fix_to_virt/
FIXMAP-$(CONFIG_PK_FIXMAP__FIX_TO_VIRT)			+= BiscuitOS-FIXMAP-__fix_to_virt/
FIXMAP-$(CONFIG_PK_FIXMAP_SET_FIXMAP)			+= BiscuitOS-FIXMAP-set_fixmap/
FIXMAP-$(CONFIG_PK_FIXMAP__SET_FIXMAP)			+= BiscuitOS-FIXMAP-__set_fixmap/
FIXMAP-$(CONFIG_PK_FIXMAP_SET_FIXMAP_OFFSET)		+= BiscuitOS-FIXMAP-set_fixmap_offset/
FIXMAP-$(CONFIG_PK_FIXMAP__SET_FIXMAP_OFFSET)		+= BiscuitOS-FIXMAP-__set_fixmap_offset/
FIXMAP-$(CONFIG_PK_FIXMAP_SET_FIXMAP_IO)		+= BiscuitOS-FIXMAP-set_fixmap_io/
FIXMAP-$(CONFIG_PK_FIXMAP_SET_FIXMAP_OFFSET_IO)		+= BiscuitOS-FIXMAP-set_fixmap_offset_io/
FIXMAP-$(CONFIG_PK_FIXMAP_SET_FIXMAP_NOCACHE)		+= BiscuitOS-FIXMAP-set_fixmap_nocache/
FIXMAP-$(CONFIG_PK_FIXMAP_SET_FIXMAP_OFFSET_NOCACHE)	+= BiscuitOS-FIXMAP-set_fixmap_offset_nocache/
FIXMAP-$(CONFIG_PK_FIXMAP_VIRT_TO_FIX)			+= BiscuitOS-FIXMAP-virt_to_fix/
FIXMAP-$(CONFIG_PK_FIXMAP__VIRT_TO_FIX)			+= BiscuitOS-FIXMAP-__virt_to_fix/
FIXMAP-$(CONFIG_PK_PERMANENT)				+= BiscuitOS-Permanent/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/FIXMAP/%/Makefile, $(FIXMAP-y))

include $(PACKAGE_MAKEDIR)

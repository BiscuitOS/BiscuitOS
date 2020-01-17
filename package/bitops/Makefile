bitops-$(CONFIG_PK_BITOPS_ROL32)		+= rol32/
bitops-$(CONFIG_PK_BITOPS_ROL16)		+= rol16/
bitops-$(CONFIG_PK_BITOPS_ROL8)			+= rol8/
bitops-$(CONFIG_PK_BITOPS_ROR32)		+= ror32/
bitops-$(CONFIG_PK_BITOPS_ROR16)		+= ror16/
bitops-$(CONFIG_PK_BITOPS_ROR8)			+= ror8/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/bitops/%/Makefile, $(bitops-y))

include $(PACKAGE_MAKEDIR)

SMBIOS-$(CONFIG_PK_DMIDECODE_TOOLS)				+= dmidecode/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/SMBIOS/%/Makefile, $(SMBIOS-y))

include $(PACKAGE_MAKEDIR)

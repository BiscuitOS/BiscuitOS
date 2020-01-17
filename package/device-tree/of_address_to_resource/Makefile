################################################
#
# of_address_to_resource
#
################################################
PK_OF_ADDRESS_TO_RES_NAME        := of_address_to_resource
PK_OF_ADDRESS_TO_RES_VERSION     := $(CONFIG_PK_OF_ADDRESS_TO_RES_VERSION)
PK_OF_ADDRESS_TO_RES_SITE        := $(CONFIG_PK_OF_ADDRESS_TO_RES_URL)
PK_OF_ADDRESS_TO_RES_GITHUB      := $(CONFIG_PK_OF_ADDRESS_TO_RES_GITHUB)
PK_OF_ADDRESS_TO_RES_SUBNAME     :=
PK_OF_ADDRESS_TO_RES_BUILDARCH   := $(CONFIG_PK_OF_ADDRESS_TO_RES_BUILDARCH)
PK_OF_ADDRESS_TO_RES_DIR         := $(srctree)/package/device-tree/of_address_to_resource
PK_OF_ADDRESS_TO_RES_PATCH       := $(PK_OF_ADDRESS_TO_RES_DIR)/patch
PK_OF_ADDRESS_TO_RES_BSBIT       := of_address_to_resource-$(PK_OF_ADDRESS_TO_RES_VERSION).bsbit
PK_OF_ADDRESS_TO_RES_OUT         :=
PK_OF_ADDRESS_TO_RES_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_OF_ADDRESS_TO_RES_TAR         := $(CONFIG_PK_OF_ADDRESS_TO_RES_TAR)
PK_OF_ADDRESS_TO_RES_PACKAGE     :=
PK_OF_ADDRESS_TO_RES_CONFIG      := $(CONFIG_PK_OF_ADDRESS_TO_RES_CONFIG)
SUB_TARGET                  += $(PK_OF_ADDRESS_TO_RES_DIR)/build

PK_OF_ADDRESS_TO_RES_sh = $(CONFIG_SHELL) $(PK_OF_ADDRESS_TO_RES_SCRIPTS) \
                 $1X \
                 $(PK_OF_ADDRESS_TO_RES_NAME)X \
                 $(PK_OF_ADDRESS_TO_RES_VERSION)X \
                 $(PK_OF_ADDRESS_TO_RES_SITE)X \
                 $(PK_OF_ADDRESS_TO_RES_GITHUB)X \
                 $(PK_OF_ADDRESS_TO_RES_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_OF_ADDRESS_TO_RES_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_OF_ADDRESS_TO_RES_SUBNAME)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_CONFIG)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_LIBPATH)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_CPPFLAGS)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_DPKCONFIG)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_CFLAGS)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_LDFLAGS)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_CXXFLAGS)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_ASFLAGS)X \
                 $(PK_OF_ADDRESS_TO_RES_BSBIT)X \
                 $(PK_OF_ADDRESS_TO_RES_BUILDARCH)X \
		 $(PK_OF_ADDRESS_TO_RES_CSRCFILE)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_SRCFILE)X \
                 $(CONFIG_PK_OF_ADDRESS_TO_RES_CSRCFILE)

$(PK_OF_ADDRESS_TO_RES_DIR)/build: FORCE
	$(Q)$(call PK_OF_ADDRESS_TO_RES_sh,$(srctree))

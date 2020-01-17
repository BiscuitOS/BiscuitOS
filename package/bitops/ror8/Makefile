################################################
#
# ror8
#
################################################
PK_BITOPS_ROR8_NAME        := ror8
PK_BITOPS_ROR8_VERSION     := $(CONFIG_PK_BITOPS_ROR8_VERSION)
PK_BITOPS_ROR8_SITE        := $(CONFIG_PK_BITOPS_ROR8_URL)
PK_BITOPS_ROR8_GITHUB      := $(CONFIG_PK_BITOPS_ROR8_GITHUB)
PK_BITOPS_ROR8_SUBNAME     :=
PK_BITOPS_ROR8_BUILDARCH   := $(CONFIG_PK_BITOPS_ROR8_BUILDARCH)
PK_BITOPS_ROR8_DIR         := $(srctree)/package/bitops/ror8
PK_BITOPS_ROR8_PATCH       := $(PK_BITOPS_ROR8_DIR)/patch
PK_BITOPS_ROR8_BSBIT       := ror8-$(PK_BITOPS_ROR8_VERSION).bsbit
PK_BITOPS_ROR8_OUT         :=
PK_BITOPS_ROR8_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BITOPS_ROR8_TAR         := $(CONFIG_PK_BITOPS_ROR8_TAR)
PK_BITOPS_ROR8_PACKAGE     :=
PK_BITOPS_ROR8_CONFIG      := $(CONFIG_PK_BITOPS_ROR8_CONFIG)
SUB_TARGET                  += $(PK_BITOPS_ROR8_DIR)/build

PK_BITOPS_ROR8_sh = $(CONFIG_SHELL) $(PK_BITOPS_ROR8_SCRIPTS) \
                 $1X \
                 $(PK_BITOPS_ROR8_NAME)X \
                 $(PK_BITOPS_ROR8_VERSION)X \
                 $(PK_BITOPS_ROR8_SITE)X \
                 $(PK_BITOPS_ROR8_GITHUB)X \
                 $(PK_BITOPS_ROR8_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BITOPS_ROR8_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BITOPS_ROR8_SUBNAME)X \
                 $(CONFIG_PK_BITOPS_ROR8_CONFIG)X \
                 $(CONFIG_PK_BITOPS_ROR8_LIBPATH)X \
                 $(CONFIG_PK_BITOPS_ROR8_CPPFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROR8_DPKCONFIG)X \
                 $(CONFIG_PK_BITOPS_ROR8_CFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROR8_LDFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROR8_CXXFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROR8_ASFLAGS)X \
                 $(PK_BITOPS_ROR8_BSBIT)X \
                 $(PK_BITOPS_ROR8_BUILDARCH)X \
		 $(PK_BITOPS_ROR8_CSRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROR8_SRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROR8_CSRCFILE)

$(PK_BITOPS_ROR8_DIR)/build: FORCE
	$(Q)$(call PK_BITOPS_ROR8_sh,$(srctree))

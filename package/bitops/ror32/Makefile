################################################
#
# ror32
#
################################################
PK_BITOPS_ROR32_NAME        := ror32
PK_BITOPS_ROR32_VERSION     := $(CONFIG_PK_BITOPS_ROR32_VERSION)
PK_BITOPS_ROR32_SITE        := $(CONFIG_PK_BITOPS_ROR32_URL)
PK_BITOPS_ROR32_GITHUB      := $(CONFIG_PK_BITOPS_ROR32_GITHUB)
PK_BITOPS_ROR32_SUBNAME     :=
PK_BITOPS_ROR32_BUILDARCH   := $(CONFIG_PK_BITOPS_ROR32_BUILDARCH)
PK_BITOPS_ROR32_DIR         := $(srctree)/package/bitops/ror32
PK_BITOPS_ROR32_PATCH       := $(PK_BITOPS_ROR32_DIR)/patch
PK_BITOPS_ROR32_BSBIT       := ror32-$(PK_BITOPS_ROR32_VERSION).bsbit
PK_BITOPS_ROR32_OUT         :=
PK_BITOPS_ROR32_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BITOPS_ROR32_TAR         := $(CONFIG_PK_BITOPS_ROR32_TAR)
PK_BITOPS_ROR32_PACKAGE     :=
PK_BITOPS_ROR32_CONFIG      := $(CONFIG_PK_BITOPS_ROR32_CONFIG)
SUB_TARGET                  += $(PK_BITOPS_ROR32_DIR)/build

PK_BITOPS_ROR32_sh = $(CONFIG_SHELL) $(PK_BITOPS_ROR32_SCRIPTS) \
                 $1X \
                 $(PK_BITOPS_ROR32_NAME)X \
                 $(PK_BITOPS_ROR32_VERSION)X \
                 $(PK_BITOPS_ROR32_SITE)X \
                 $(PK_BITOPS_ROR32_GITHUB)X \
                 $(PK_BITOPS_ROR32_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BITOPS_ROR32_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BITOPS_ROR32_SUBNAME)X \
                 $(CONFIG_PK_BITOPS_ROR32_CONFIG)X \
                 $(CONFIG_PK_BITOPS_ROR32_LIBPATH)X \
                 $(CONFIG_PK_BITOPS_ROR32_CPPFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROR32_DPKCONFIG)X \
                 $(CONFIG_PK_BITOPS_ROR32_CFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROR32_LDFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROR32_CXXFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROR32_ASFLAGS)X \
                 $(PK_BITOPS_ROR32_BSBIT)X \
                 $(PK_BITOPS_ROR32_BUILDARCH)X \
		 $(PK_BITOPS_ROR32_CSRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROR32_SRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROR32_CSRCFILE)

$(PK_BITOPS_ROR32_DIR)/build: FORCE
	$(Q)$(call PK_BITOPS_ROR32_sh,$(srctree))

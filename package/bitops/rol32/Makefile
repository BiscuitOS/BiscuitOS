################################################
#
# rol32
#
################################################
PK_BITOPS_ROL32_NAME        := rol32
PK_BITOPS_ROL32_VERSION     := $(CONFIG_PK_BITOPS_ROL32_VERSION)
PK_BITOPS_ROL32_SITE        := $(CONFIG_PK_BITOPS_ROL32_URL)
PK_BITOPS_ROL32_GITHUB      := $(CONFIG_PK_BITOPS_ROL32_GITHUB)
PK_BITOPS_ROL32_SUBNAME     :=
PK_BITOPS_ROL32_BUILDARCH   := $(CONFIG_PK_BITOPS_ROL32_BUILDARCH)
PK_BITOPS_ROL32_DIR         := $(srctree)/package/bitops/rol32
PK_BITOPS_ROL32_PATCH       := $(PK_BITOPS_ROL32_DIR)/patch
PK_BITOPS_ROL32_BSBIT       := rol32-$(PK_BITOPS_ROL32_VERSION).bsbit
PK_BITOPS_ROL32_OUT         :=
PK_BITOPS_ROL32_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BITOPS_ROL32_TAR         := $(CONFIG_PK_BITOPS_ROL32_TAR)
PK_BITOPS_ROL32_PACKAGE     :=
PK_BITOPS_ROL32_CONFIG      := $(CONFIG_PK_BITOPS_ROL32_CONFIG)
SUB_TARGET                  += $(PK_BITOPS_ROL32_DIR)/build

PK_BITOPS_ROL32_sh = $(CONFIG_SHELL) $(PK_BITOPS_ROL32_SCRIPTS) \
                 $1X \
                 $(PK_BITOPS_ROL32_NAME)X \
                 $(PK_BITOPS_ROL32_VERSION)X \
                 $(PK_BITOPS_ROL32_SITE)X \
                 $(PK_BITOPS_ROL32_GITHUB)X \
                 $(PK_BITOPS_ROL32_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BITOPS_ROL32_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BITOPS_ROL32_SUBNAME)X \
                 $(CONFIG_PK_BITOPS_ROL32_CONFIG)X \
                 $(CONFIG_PK_BITOPS_ROL32_LIBPATH)X \
                 $(CONFIG_PK_BITOPS_ROL32_CPPFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL32_DPKCONFIG)X \
                 $(CONFIG_PK_BITOPS_ROL32_CFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL32_LDFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL32_CXXFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL32_ASFLAGS)X \
                 $(PK_BITOPS_ROL32_BSBIT)X \
                 $(PK_BITOPS_ROL32_BUILDARCH)X \
		 $(PK_BITOPS_ROL32_CSRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROL32_SRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROL32_CSRCFILE)

$(PK_BITOPS_ROL32_DIR)/build: FORCE
	$(Q)$(call PK_BITOPS_ROL32_sh,$(srctree))

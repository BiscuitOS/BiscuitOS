################################################
#
# rol16
#
################################################
PK_BITOPS_ROL16_NAME        := rol16
PK_BITOPS_ROL16_VERSION     := $(CONFIG_PK_BITOPS_ROL16_VERSION)
PK_BITOPS_ROL16_SITE        := $(CONFIG_PK_BITOPS_ROL16_URL)
PK_BITOPS_ROL16_GITHUB      := $(CONFIG_PK_BITOPS_ROL16_GITHUB)
PK_BITOPS_ROL16_SUBNAME     :=
PK_BITOPS_ROL16_BUILDARCH   := $(CONFIG_PK_BITOPS_ROL16_BUILDARCH)
PK_BITOPS_ROL16_DIR         := $(srctree)/package/bitops/rol16
PK_BITOPS_ROL16_PATCH       := $(PK_BITOPS_ROL16_DIR)/patch
PK_BITOPS_ROL16_BSBIT       := rol16-$(PK_BITOPS_ROL16_VERSION).bsbit
PK_BITOPS_ROL16_OUT         :=
PK_BITOPS_ROL16_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BITOPS_ROL16_TAR         := $(CONFIG_PK_BITOPS_ROL16_TAR)
PK_BITOPS_ROL16_PACKAGE     :=
PK_BITOPS_ROL16_CONFIG      := $(CONFIG_PK_BITOPS_ROL16_CONFIG)
SUB_TARGET                  += $(PK_BITOPS_ROL16_DIR)/build

PK_BITOPS_ROL16_sh = $(CONFIG_SHELL) $(PK_BITOPS_ROL16_SCRIPTS) \
                 $1X \
                 $(PK_BITOPS_ROL16_NAME)X \
                 $(PK_BITOPS_ROL16_VERSION)X \
                 $(PK_BITOPS_ROL16_SITE)X \
                 $(PK_BITOPS_ROL16_GITHUB)X \
                 $(PK_BITOPS_ROL16_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BITOPS_ROL16_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BITOPS_ROL16_SUBNAME)X \
                 $(CONFIG_PK_BITOPS_ROL16_CONFIG)X \
                 $(CONFIG_PK_BITOPS_ROL16_LIBPATH)X \
                 $(CONFIG_PK_BITOPS_ROL16_CPPFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL16_DPKCONFIG)X \
                 $(CONFIG_PK_BITOPS_ROL16_CFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL16_LDFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL16_CXXFLAGS)X \
                 $(CONFIG_PK_BITOPS_ROL16_ASFLAGS)X \
                 $(PK_BITOPS_ROL16_BSBIT)X \
                 $(PK_BITOPS_ROL16_BUILDARCH)X \
		 $(PK_BITOPS_ROL16_CSRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROL16_SRCFILE)X \
                 $(CONFIG_PK_BITOPS_ROL16_CSRCFILE)

$(PK_BITOPS_ROL16_DIR)/build: FORCE
	$(Q)$(call PK_BITOPS_ROL16_sh,$(srctree))

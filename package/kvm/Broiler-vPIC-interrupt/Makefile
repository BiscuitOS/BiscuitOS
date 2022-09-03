################################################
#
# Broiler-vPIC-interrupt
#
################################################
PK_VINTR_VPIC_NAME        := Broiler-vPIC-interrupt
PK_VINTR_VPIC_VERSION     := $(CONFIG_PK_VINTR_VPIC_VERSION)
PK_VINTR_VPIC_SITE        := $(CONFIG_PK_VINTR_VPIC_URL)
PK_VINTR_VPIC_GITHUB      := $(CONFIG_PK_VINTR_VPIC_GITHUB)
PK_VINTR_VPIC_SUBNAME     :=
PK_VINTR_VPIC_BUILDARCH   := $(CONFIG_PK_VINTR_VPIC_BUILDARCH)
PK_VINTR_VPIC_DIR         := $(srctree)/package/kvm/Broiler-vPIC-interrupt
PK_VINTR_VPIC_PATCH       := $(PK_VINTR_VPIC_DIR)/patch
PK_VINTR_VPIC_BSBIT       := Broiler-vPIC-interrupt-$(PK_VINTR_VPIC_VERSION).bsbit
PK_VINTR_VPIC_OUT         :=
PK_VINTR_VPIC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_VINTR_VPIC_TAR         := $(CONFIG_PK_VINTR_VPIC_TAR)
PK_VINTR_VPIC_PACKAGE     :=
PK_VINTR_VPIC_CONFIG      := $(CONFIG_PK_VINTR_VPIC_CONFIG)
SUB_TARGET                  += $(PK_VINTR_VPIC_DIR)/build

PK_VINTR_VPIC_sh = $(CONFIG_SHELL) $(PK_VINTR_VPIC_SCRIPTS) \
                 $1X \
                 $(PK_VINTR_VPIC_NAME)X \
                 $(PK_VINTR_VPIC_VERSION)X \
                 $(PK_VINTR_VPIC_SITE)X \
                 $(PK_VINTR_VPIC_GITHUB)X \
                 $(PK_VINTR_VPIC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_VINTR_VPIC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_VINTR_VPIC_SUBNAME)X \
                 $(CONFIG_PK_VINTR_VPIC_CONFIG)X \
                 $(CONFIG_PK_VINTR_VPIC_LIBPATH)X \
                 $(CONFIG_PK_VINTR_VPIC_CPPFLAGS)X \
                 $(CONFIG_PK_VINTR_VPIC_DPKCONFIG)X \
                 $(CONFIG_PK_VINTR_VPIC_CFLAGS)X \
                 $(CONFIG_PK_VINTR_VPIC_LDFLAGS)X \
                 $(CONFIG_PK_VINTR_VPIC_CXXFLAGS)X \
                 $(CONFIG_PK_VINTR_VPIC_ASFLAGS)X \
                 $(PK_VINTR_VPIC_BSBIT)X \
                 $(PK_VINTR_VPIC_BUILDARCH)X \
		 $(PK_VINTR_VPIC_CSRCFILE)X \
                 $(CONFIG_PK_VINTR_VPIC_SRCFILE)X \
                 $(CONFIG_PK_VINTR_VPIC_CSRCFILE)

$(PK_VINTR_VPIC_DIR)/build: FORCE
	$(Q)$(call PK_VINTR_VPIC_sh,$(srctree))

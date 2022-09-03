################################################
#
# Broiler-vIOAPIC-interrupt
#
################################################
PK_VINTR_VIOAPIC_NAME        := Broiler-vIOAPIC-interrupt
PK_VINTR_VIOAPIC_VERSION     := $(CONFIG_PK_VINTR_VIOAPIC_VERSION)
PK_VINTR_VIOAPIC_SITE        := $(CONFIG_PK_VINTR_VIOAPIC_URL)
PK_VINTR_VIOAPIC_GITHUB      := $(CONFIG_PK_VINTR_VIOAPIC_GITHUB)
PK_VINTR_VIOAPIC_SUBNAME     :=
PK_VINTR_VIOAPIC_BUILDARCH   := $(CONFIG_PK_VINTR_VIOAPIC_BUILDARCH)
PK_VINTR_VIOAPIC_DIR         := $(srctree)/package/kvm/Broiler-vIOAPIC-interrupt
PK_VINTR_VIOAPIC_PATCH       := $(PK_VINTR_VIOAPIC_DIR)/patch
PK_VINTR_VIOAPIC_BSBIT       := Broiler-vIOAPIC-interrupt-$(PK_VINTR_VIOAPIC_VERSION).bsbit
PK_VINTR_VIOAPIC_OUT         :=
PK_VINTR_VIOAPIC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_VINTR_VIOAPIC_TAR         := $(CONFIG_PK_VINTR_VIOAPIC_TAR)
PK_VINTR_VIOAPIC_PACKAGE     :=
PK_VINTR_VIOAPIC_CONFIG      := $(CONFIG_PK_VINTR_VIOAPIC_CONFIG)
SUB_TARGET                  += $(PK_VINTR_VIOAPIC_DIR)/build

PK_VINTR_VIOAPIC_sh = $(CONFIG_SHELL) $(PK_VINTR_VIOAPIC_SCRIPTS) \
                 $1X \
                 $(PK_VINTR_VIOAPIC_NAME)X \
                 $(PK_VINTR_VIOAPIC_VERSION)X \
                 $(PK_VINTR_VIOAPIC_SITE)X \
                 $(PK_VINTR_VIOAPIC_GITHUB)X \
                 $(PK_VINTR_VIOAPIC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_VINTR_VIOAPIC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_VINTR_VIOAPIC_SUBNAME)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_CONFIG)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_LIBPATH)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_CPPFLAGS)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_DPKCONFIG)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_CFLAGS)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_LDFLAGS)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_CXXFLAGS)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_ASFLAGS)X \
                 $(PK_VINTR_VIOAPIC_BSBIT)X \
                 $(PK_VINTR_VIOAPIC_BUILDARCH)X \
		 $(PK_VINTR_VIOAPIC_CSRCFILE)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_SRCFILE)X \
                 $(CONFIG_PK_VINTR_VIOAPIC_CSRCFILE)

$(PK_VINTR_VIOAPIC_DIR)/build: FORCE
	$(Q)$(call PK_VINTR_VIOAPIC_sh,$(srctree))

################################################
#
# kunmap_atomic
#
################################################
PK_KUNMAP_ATOMIC_NAME        := kunmap_atomic
PK_KUNMAP_ATOMIC_VERSION     := $(CONFIG_PK_KUNMAP_ATOMIC_VERSION)
PK_KUNMAP_ATOMIC_SITE        := $(CONFIG_PK_KUNMAP_ATOMIC_URL)
PK_KUNMAP_ATOMIC_GITHUB      := $(CONFIG_PK_KUNMAP_ATOMIC_GITHUB)
PK_KUNMAP_ATOMIC_SUBNAME     :=
PK_KUNMAP_ATOMIC_BUILDARCH   := $(CONFIG_PK_KUNMAP_ATOMIC_BUILDARCH)
PK_KUNMAP_ATOMIC_DIR         := $(srctree)/package/kmap/kunmap_atomic
PK_KUNMAP_ATOMIC_PATCH       := $(PK_KUNMAP_ATOMIC_DIR)/patch
PK_KUNMAP_ATOMIC_BSBIT       := kunmap_atomic-$(PK_KUNMAP_ATOMIC_VERSION).bsbit
PK_KUNMAP_ATOMIC_OUT         :=
PK_KUNMAP_ATOMIC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KUNMAP_ATOMIC_TAR         := $(CONFIG_PK_KUNMAP_ATOMIC_TAR)
PK_KUNMAP_ATOMIC_PACKAGE     :=
PK_KUNMAP_ATOMIC_CONFIG      := $(CONFIG_PK_KUNMAP_ATOMIC_CONFIG)
SUB_TARGET                  += $(PK_KUNMAP_ATOMIC_DIR)/build

PK_KUNMAP_ATOMIC_sh = $(CONFIG_SHELL) $(PK_KUNMAP_ATOMIC_SCRIPTS) \
                 $1X \
                 $(PK_KUNMAP_ATOMIC_NAME)X \
                 $(PK_KUNMAP_ATOMIC_VERSION)X \
                 $(PK_KUNMAP_ATOMIC_SITE)X \
                 $(PK_KUNMAP_ATOMIC_GITHUB)X \
                 $(PK_KUNMAP_ATOMIC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KUNMAP_ATOMIC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KUNMAP_ATOMIC_SUBNAME)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_CONFIG)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_LIBPATH)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_CPPFLAGS)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_DPKCONFIG)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_CFLAGS)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_LDFLAGS)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_CXXFLAGS)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_ASFLAGS)X \
                 $(PK_KUNMAP_ATOMIC_BSBIT)X \
                 $(PK_KUNMAP_ATOMIC_BUILDARCH)X \
		 $(PK_KUNMAP_ATOMIC_CSRCFILE)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_SRCFILE)X \
                 $(CONFIG_PK_KUNMAP_ATOMIC_CSRCFILE)

$(PK_KUNMAP_ATOMIC_DIR)/build: FORCE
	$(Q)$(call PK_KUNMAP_ATOMIC_sh,$(srctree))

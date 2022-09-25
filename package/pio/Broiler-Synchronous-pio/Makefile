################################################
#
# Broiler-Synchronous-pio
#
################################################
PK_PIO_SYNC_BROILER_NAME        := Broiler-Synchronous-pio
PK_PIO_SYNC_BROILER_VERSION     := $(CONFIG_PK_PIO_SYNC_BROILER_VERSION)
PK_PIO_SYNC_BROILER_SITE        := $(CONFIG_PK_PIO_SYNC_BROILER_URL)
PK_PIO_SYNC_BROILER_GITHUB      := $(CONFIG_PK_PIO_SYNC_BROILER_GITHUB)
PK_PIO_SYNC_BROILER_SUBNAME     :=
PK_PIO_SYNC_BROILER_BUILDARCH   := $(CONFIG_PK_PIO_SYNC_BROILER_BUILDARCH)
PK_PIO_SYNC_BROILER_DIR         := $(srctree)/package/pio/Broiler-Synchronous-pio
PK_PIO_SYNC_BROILER_PATCH       := $(PK_PIO_SYNC_BROILER_DIR)/patch
PK_PIO_SYNC_BROILER_BSBIT       := Broiler-Synchronous-pio-$(PK_PIO_SYNC_BROILER_VERSION).bsbit
PK_PIO_SYNC_BROILER_OUT         :=
PK_PIO_SYNC_BROILER_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PIO_SYNC_BROILER_TAR         := $(CONFIG_PK_PIO_SYNC_BROILER_TAR)
PK_PIO_SYNC_BROILER_PACKAGE     :=
PK_PIO_SYNC_BROILER_CONFIG      := $(CONFIG_PK_PIO_SYNC_BROILER_CONFIG)
SUB_TARGET                  += $(PK_PIO_SYNC_BROILER_DIR)/build

PK_PIO_SYNC_BROILER_sh = $(CONFIG_SHELL) $(PK_PIO_SYNC_BROILER_SCRIPTS) \
                 $1X \
                 $(PK_PIO_SYNC_BROILER_NAME)X \
                 $(PK_PIO_SYNC_BROILER_VERSION)X \
                 $(PK_PIO_SYNC_BROILER_SITE)X \
                 $(PK_PIO_SYNC_BROILER_GITHUB)X \
                 $(PK_PIO_SYNC_BROILER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PIO_SYNC_BROILER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PIO_SYNC_BROILER_SUBNAME)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_CONFIG)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_LIBPATH)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_CPPFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_DPKCONFIG)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_CFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_LDFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_CXXFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_ASFLAGS)X \
                 $(PK_PIO_SYNC_BROILER_BSBIT)X \
                 $(PK_PIO_SYNC_BROILER_BUILDARCH)X \
		 $(PK_PIO_SYNC_BROILER_CSRCFILE)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_SRCFILE)X \
                 $(CONFIG_PK_PIO_SYNC_BROILER_CSRCFILE)

$(PK_PIO_SYNC_BROILER_DIR)/build: FORCE
	$(Q)$(call PK_PIO_SYNC_BROILER_sh,$(srctree))

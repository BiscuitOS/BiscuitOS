################################################
#
# Broiler-Synchronous-pio-In-Kernel
#
################################################
PK_PIO_SYNC_INKERNEL_NAME        := Broiler-Synchronous-pio-In-Kernel
PK_PIO_SYNC_INKERNEL_VERSION     := $(CONFIG_PK_PIO_SYNC_INKERNEL_VERSION)
PK_PIO_SYNC_INKERNEL_SITE        := $(CONFIG_PK_PIO_SYNC_INKERNEL_URL)
PK_PIO_SYNC_INKERNEL_GITHUB      := $(CONFIG_PK_PIO_SYNC_INKERNEL_GITHUB)
PK_PIO_SYNC_INKERNEL_SUBNAME     :=
PK_PIO_SYNC_INKERNEL_BUILDARCH   := $(CONFIG_PK_PIO_SYNC_INKERNEL_BUILDARCH)
PK_PIO_SYNC_INKERNEL_DIR         := $(srctree)/package/pio/Broiler-Synchronous-pio-In-Kernel
PK_PIO_SYNC_INKERNEL_PATCH       := $(PK_PIO_SYNC_INKERNEL_DIR)/patch
PK_PIO_SYNC_INKERNEL_BSBIT       := Broiler-Synchronous-pio-In-Kernel-$(PK_PIO_SYNC_INKERNEL_VERSION).bsbit
PK_PIO_SYNC_INKERNEL_OUT         :=
PK_PIO_SYNC_INKERNEL_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PIO_SYNC_INKERNEL_TAR         := $(CONFIG_PK_PIO_SYNC_INKERNEL_TAR)
PK_PIO_SYNC_INKERNEL_PACKAGE     :=
PK_PIO_SYNC_INKERNEL_CONFIG      := $(CONFIG_PK_PIO_SYNC_INKERNEL_CONFIG)
SUB_TARGET                  += $(PK_PIO_SYNC_INKERNEL_DIR)/build

PK_PIO_SYNC_INKERNEL_sh = $(CONFIG_SHELL) $(PK_PIO_SYNC_INKERNEL_SCRIPTS) \
                 $1X \
                 $(PK_PIO_SYNC_INKERNEL_NAME)X \
                 $(PK_PIO_SYNC_INKERNEL_VERSION)X \
                 $(PK_PIO_SYNC_INKERNEL_SITE)X \
                 $(PK_PIO_SYNC_INKERNEL_GITHUB)X \
                 $(PK_PIO_SYNC_INKERNEL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PIO_SYNC_INKERNEL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PIO_SYNC_INKERNEL_SUBNAME)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_CONFIG)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_LIBPATH)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_CPPFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_DPKCONFIG)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_CFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_LDFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_CXXFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_ASFLAGS)X \
                 $(PK_PIO_SYNC_INKERNEL_BSBIT)X \
                 $(PK_PIO_SYNC_INKERNEL_BUILDARCH)X \
		 $(PK_PIO_SYNC_INKERNEL_CSRCFILE)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_SRCFILE)X \
                 $(CONFIG_PK_PIO_SYNC_INKERNEL_CSRCFILE)

$(PK_PIO_SYNC_INKERNEL_DIR)/build: FORCE
	$(Q)$(call PK_PIO_SYNC_INKERNEL_sh,$(srctree))

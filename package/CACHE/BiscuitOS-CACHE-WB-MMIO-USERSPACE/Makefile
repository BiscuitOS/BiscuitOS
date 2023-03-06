################################################
#
# BiscuitOS-CACHE-WB-MMIO-USERSPACE
#
################################################
PK_CACHE_WB_MMIO_U_NAME        := BiscuitOS-CACHE-WB-MMIO-USERSPACE
PK_CACHE_WB_MMIO_U_VERSION     := $(CONFIG_PK_CACHE_WB_MMIO_U_VERSION)
PK_CACHE_WB_MMIO_U_SITE        := $(CONFIG_PK_CACHE_WB_MMIO_U_URL)
PK_CACHE_WB_MMIO_U_GITHUB      := $(CONFIG_PK_CACHE_WB_MMIO_U_GITHUB)
PK_CACHE_WB_MMIO_U_SUBNAME     :=
PK_CACHE_WB_MMIO_U_BUILDARCH   := $(CONFIG_PK_CACHE_WB_MMIO_U_BUILDARCH)
PK_CACHE_WB_MMIO_U_DIR         := $(srctree)/package/CACHE/BiscuitOS-CACHE-WB-MMIO-USERSPACE
PK_CACHE_WB_MMIO_U_PATCH       := $(PK_CACHE_WB_MMIO_U_DIR)/patch
PK_CACHE_WB_MMIO_U_BSBIT       := BiscuitOS-CACHE-WB-MMIO-USERSPACE-$(PK_CACHE_WB_MMIO_U_VERSION).bsbit
PK_CACHE_WB_MMIO_U_OUT         :=
PK_CACHE_WB_MMIO_U_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CACHE_WB_MMIO_U_TAR         := $(CONFIG_PK_CACHE_WB_MMIO_U_TAR)
PK_CACHE_WB_MMIO_U_PACKAGE     :=
PK_CACHE_WB_MMIO_U_CONFIG      := $(CONFIG_PK_CACHE_WB_MMIO_U_CONFIG)
SUB_TARGET                  += $(PK_CACHE_WB_MMIO_U_DIR)/build

PK_CACHE_WB_MMIO_U_sh = $(CONFIG_SHELL) $(PK_CACHE_WB_MMIO_U_SCRIPTS) \
                 $1X \
                 $(PK_CACHE_WB_MMIO_U_NAME)X \
                 $(PK_CACHE_WB_MMIO_U_VERSION)X \
                 $(PK_CACHE_WB_MMIO_U_SITE)X \
                 $(PK_CACHE_WB_MMIO_U_GITHUB)X \
                 $(PK_CACHE_WB_MMIO_U_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CACHE_WB_MMIO_U_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CACHE_WB_MMIO_U_SUBNAME)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_CONFIG)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_LIBPATH)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_CPPFLAGS)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_DPKCONFIG)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_CFLAGS)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_LDFLAGS)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_CXXFLAGS)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_ASFLAGS)X \
                 $(PK_CACHE_WB_MMIO_U_BSBIT)X \
                 $(PK_CACHE_WB_MMIO_U_BUILDARCH)X \
		 $(PK_CACHE_WB_MMIO_U_CSRCFILE)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_SRCFILE)X \
                 $(CONFIG_PK_CACHE_WB_MMIO_U_CSRCFILE)

$(PK_CACHE_WB_MMIO_U_DIR)/build: FORCE
	$(Q)$(call PK_CACHE_WB_MMIO_U_sh,$(srctree))

################################################
#
# BiscuitOS-ZONE-DEVICE
#
################################################
PK_ZONE_DEVICE_NAME        := BiscuitOS-ZONE-DEVICE
PK_ZONE_DEVICE_VERSION     := $(CONFIG_PK_ZONE_DEVICE_VERSION)
PK_ZONE_DEVICE_SITE        := $(CONFIG_PK_ZONE_DEVICE_URL)
PK_ZONE_DEVICE_GITHUB      := $(CONFIG_PK_ZONE_DEVICE_GITHUB)
PK_ZONE_DEVICE_SUBNAME     :=
PK_ZONE_DEVICE_BUILDARCH   := $(CONFIG_PK_ZONE_DEVICE_BUILDARCH)
PK_ZONE_DEVICE_DIR         := $(srctree)/package/ZONE/BiscuitOS-ZONE-DEVICE
PK_ZONE_DEVICE_PATCH       := $(PK_ZONE_DEVICE_DIR)/patch
PK_ZONE_DEVICE_BSBIT       := BiscuitOS-ZONE-DEVICE-$(PK_ZONE_DEVICE_VERSION).bsbit
PK_ZONE_DEVICE_OUT         :=
PK_ZONE_DEVICE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_ZONE_DEVICE_TAR         := $(CONFIG_PK_ZONE_DEVICE_TAR)
PK_ZONE_DEVICE_PACKAGE     :=
PK_ZONE_DEVICE_CONFIG      := $(CONFIG_PK_ZONE_DEVICE_CONFIG)
SUB_TARGET                  += $(PK_ZONE_DEVICE_DIR)/build

PK_ZONE_DEVICE_sh = $(CONFIG_SHELL) $(PK_ZONE_DEVICE_SCRIPTS) \
                 $1X \
                 $(PK_ZONE_DEVICE_NAME)X \
                 $(PK_ZONE_DEVICE_VERSION)X \
                 $(PK_ZONE_DEVICE_SITE)X \
                 $(PK_ZONE_DEVICE_GITHUB)X \
                 $(PK_ZONE_DEVICE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ZONE_DEVICE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ZONE_DEVICE_SUBNAME)X \
                 $(CONFIG_PK_ZONE_DEVICE_CONFIG)X \
                 $(CONFIG_PK_ZONE_DEVICE_LIBPATH)X \
                 $(CONFIG_PK_ZONE_DEVICE_CPPFLAGS)X \
                 $(CONFIG_PK_ZONE_DEVICE_DPKCONFIG)X \
                 $(CONFIG_PK_ZONE_DEVICE_CFLAGS)X \
                 $(CONFIG_PK_ZONE_DEVICE_LDFLAGS)X \
                 $(CONFIG_PK_ZONE_DEVICE_CXXFLAGS)X \
                 $(CONFIG_PK_ZONE_DEVICE_ASFLAGS)X \
                 $(PK_ZONE_DEVICE_BSBIT)X \
                 $(PK_ZONE_DEVICE_BUILDARCH)X \
		 $(PK_ZONE_DEVICE_CSRCFILE)X \
                 $(CONFIG_PK_ZONE_DEVICE_SRCFILE)X \
                 $(CONFIG_PK_ZONE_DEVICE_CSRCFILE)

$(PK_ZONE_DEVICE_DIR)/build: FORCE
	$(Q)$(call PK_ZONE_DEVICE_sh,$(srctree))

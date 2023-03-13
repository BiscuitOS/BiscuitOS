################################################
#
# BiscuitOS-Platform
#
################################################
PK_PLATFORM_DEMO_NAME        := BiscuitOS-Platform
PK_PLATFORM_DEMO_VERSION     := $(CONFIG_PK_PLATFORM_DEMO_VERSION)
PK_PLATFORM_DEMO_SITE        := $(CONFIG_PK_PLATFORM_DEMO_URL)
PK_PLATFORM_DEMO_GITHUB      := $(CONFIG_PK_PLATFORM_DEMO_GITHUB)
PK_PLATFORM_DEMO_SUBNAME     :=
PK_PLATFORM_DEMO_BUILDARCH   := $(CONFIG_PK_PLATFORM_DEMO_BUILDARCH)
PK_PLATFORM_DEMO_DIR         := $(srctree)/package/BiscuitOS-demo/BiscuitOS-Platform
PK_PLATFORM_DEMO_PATCH       := $(PK_PLATFORM_DEMO_DIR)/patch
PK_PLATFORM_DEMO_BSBIT       := BiscuitOS-Platform-$(PK_PLATFORM_DEMO_VERSION).bsbit
PK_PLATFORM_DEMO_OUT         :=
PK_PLATFORM_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PLATFORM_DEMO_TAR         := $(CONFIG_PK_PLATFORM_DEMO_TAR)
PK_PLATFORM_DEMO_PACKAGE     :=
PK_PLATFORM_DEMO_CONFIG      := $(CONFIG_PK_PLATFORM_DEMO_CONFIG)
SUB_TARGET                  += $(PK_PLATFORM_DEMO_DIR)/build

PK_PLATFORM_DEMO_sh = $(CONFIG_SHELL) $(PK_PLATFORM_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_PLATFORM_DEMO_NAME)X \
                 $(PK_PLATFORM_DEMO_VERSION)X \
                 $(PK_PLATFORM_DEMO_SITE)X \
                 $(PK_PLATFORM_DEMO_GITHUB)X \
                 $(PK_PLATFORM_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PLATFORM_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PLATFORM_DEMO_SUBNAME)X \
                 $(CONFIG_PK_PLATFORM_DEMO_CONFIG)X \
                 $(CONFIG_PK_PLATFORM_DEMO_LIBPATH)X \
                 $(CONFIG_PK_PLATFORM_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_PLATFORM_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_PLATFORM_DEMO_CFLAGS)X \
                 $(CONFIG_PK_PLATFORM_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_PLATFORM_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_PLATFORM_DEMO_ASFLAGS)X \
                 $(PK_PLATFORM_DEMO_BSBIT)X \
                 $(PK_PLATFORM_DEMO_BUILDARCH)X \
		 $(PK_PLATFORM_DEMO_CSRCFILE)X \
                 $(CONFIG_PK_PLATFORM_DEMO_SRCFILE)X \
                 $(CONFIG_PK_PLATFORM_DEMO_CSRCFILE)

$(PK_PLATFORM_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_PLATFORM_DEMO_sh,$(srctree))

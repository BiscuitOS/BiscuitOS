################################################
#
# BiscuitOS-modules
#
################################################
PK_MODULES_DEMO_NAME        := BiscuitOS-modules
PK_MODULES_DEMO_VERSION     := $(CONFIG_PK_MODULES_DEMO_VERSION)
PK_MODULES_DEMO_SITE        := $(CONFIG_PK_MODULES_DEMO_URL)
PK_MODULES_DEMO_GITHUB      := $(CONFIG_PK_MODULES_DEMO_GITHUB)
PK_MODULES_DEMO_SUBNAME     :=
PK_MODULES_DEMO_BUILDARCH   := $(CONFIG_PK_MODULES_DEMO_BUILDARCH)
PK_MODULES_DEMO_DIR         := $(srctree)/package/BiscuitOS-demo/BiscuitOS-modules
PK_MODULES_DEMO_PATCH       := $(PK_MODULES_DEMO_DIR)/patch
PK_MODULES_DEMO_BSBIT       := BiscuitOS-modules-$(PK_MODULES_DEMO_VERSION).bsbit
PK_MODULES_DEMO_OUT         :=
PK_MODULES_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MODULES_DEMO_TAR         := $(CONFIG_PK_MODULES_DEMO_TAR)
PK_MODULES_DEMO_PACKAGE     :=
PK_MODULES_DEMO_CONFIG      := $(CONFIG_PK_MODULES_DEMO_CONFIG)
SUB_TARGET                  += $(PK_MODULES_DEMO_DIR)/build

PK_MODULES_DEMO_sh = $(CONFIG_SHELL) $(PK_MODULES_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_MODULES_DEMO_NAME)X \
                 $(PK_MODULES_DEMO_VERSION)X \
                 $(PK_MODULES_DEMO_SITE)X \
                 $(PK_MODULES_DEMO_GITHUB)X \
                 $(PK_MODULES_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MODULES_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MODULES_DEMO_SUBNAME)X \
                 $(CONFIG_PK_MODULES_DEMO_CONFIG)X \
                 $(CONFIG_PK_MODULES_DEMO_LIBPATH)X \
                 $(CONFIG_PK_MODULES_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_MODULES_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_MODULES_DEMO_CFLAGS)X \
                 $(CONFIG_PK_MODULES_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_MODULES_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_MODULES_DEMO_ASFLAGS)X \
                 $(PK_MODULES_DEMO_BSBIT)X \
                 $(PK_MODULES_DEMO_BUILDARCH)X \
		 $(PK_MODULES_DEMO_CSRCFILE)X \
                 $(CONFIG_PK_MODULES_DEMO_SRCFILE)X \
                 $(CONFIG_PK_MODULES_DEMO_CSRCFILE)

$(PK_MODULES_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_MODULES_DEMO_sh,$(srctree))

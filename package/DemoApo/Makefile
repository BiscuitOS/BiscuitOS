################################################
#
# demo
#
################################################
PK_DEMO_NAME        := demo
PK_DEMO_VERSION     := $(CONFIG_PK_DEMO_VERSION)
PK_DEMO_SITE        := $(CONFIG_PK_DEMO_URL)
PK_DEMO_GITHUB      := $(CONFIG_PK_DEMO_GITHUB)
PK_DEMO_SUBNAME     :=
PK_DEMO_BUILDARCH   := $(CONFIG_PK_DEMO_BUILDARCH)
PK_DEMO_DIR         := $(srctree)/package/demo
PK_DEMO_PATCH       := $(PK_DEMO_DIR)/patch
PK_DEMO_BSBIT       := demo-$(PK_DEMO_VERSION).bsbit
PK_DEMO_OUT         :=
PK_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_DEMO_TAR         := $(CONFIG_PK_DEMO_TAR)
PK_DEMO_PACKAGE     :=
PK_DEMO_CONFIG      := $(CONFIG_PK_DEMO_CONFIG)
SUB_TARGET          += $(PK_DEMO_DIR)/build

PK_DEMO_sh = $(CONFIG_SHELL) $(PK_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_DEMO_NAME)X \
                 $(PK_DEMO_VERSION)X \
                 $(PK_DEMO_SITE)X \
                 $(PK_DEMO_GITHUB)X \
                 $(PK_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DEMO_SUBNAME)X \
                 $(CONFIG_PK_DEMO_CONFIG)X \
                 $(CONFIG_PK_DEMO_LIBPATH)X \
                 $(CONFIG_PK_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_DEMO_CFLAGS)X \
                 $(CONFIG_PK_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_DEMO_ASFLAGS)X \
                 $(PK_DEMO_BSBIT)X \
                 $(PK_DEMO_BUILDARCH)X \
		 $(PK_DEMO_CSRCFILE)X

$(PK_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_DEMO_sh,$(srctree))

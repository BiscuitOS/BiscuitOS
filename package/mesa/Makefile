################################################
#
# mesa
#
################################################
PK_MESA_NAME        := mesa
PK_MESA_VERSION     := $(CONFIG_PK_MESA_VERSION)
PK_MESA_SITE        := $(CONFIG_PK_MESA_URL)
PK_MESA_GITHUB      := $(CONFIG_PK_MESA_GITHUB)
PK_MESA_SUBNAME     :=
PK_MESA_BUILDARCH   := $(CONFIG_PK_MESA_BUILDARCH)
PK_MESA_DIR         := $(srctree)/package/mesa
PK_MESA_PATCH       := $(PK_MESA_DIR)/patch
PK_MESA_BSBIT       := mesa-$(PK_MESA_VERSION).bsbit
PK_MESA_OUT         :=
PK_MESA_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_MESA_TAR         := $(CONFIG_PK_MESA_TAR)
PK_MESA_PACKAGE     :=
PK_MESA_CONFIG      := $(CONFIG_PK_MESA_CONFIG)
SUB_TARGET          += $(PK_MESA_DIR)/build

PK_MESA_sh = $(CONFIG_SHELL) $(PK_MESA_SCRIPTS) \
                 $1X \
                 $(PK_MESA_NAME)X \
                 $(PK_MESA_VERSION)X \
                 $(PK_MESA_SITE)X \
                 $(PK_MESA_GITHUB)X \
                 $(PK_MESA_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MESA_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MESA_SUBNAME)X \
                 $(CONFIG_PK_MESA_CONFIG)X \
                 $(CONFIG_PK_MESA_LIBPATH)X \
                 $(CONFIG_PK_MESA_CPPFLAGS)X \
                 $(CONFIG_PK_MESA_DPKCONFIG)X \
                 $(CONFIG_PK_MESA_CFLAGS)X \
                 $(CONFIG_PK_MESA_LDFLAGS)X \
                 $(CONFIG_PK_MESA_CXXFLAGS)X \
                 $(CONFIG_PK_MESA_ASFLAGS)X \
                 $(PK_MESA_BSBIT)X \
                 $(PK_MESA_BUILDARCH)X

$(PK_MESA_DIR)/build: FORCE
	$(Q)$(call PK_MESA_sh,$(srctree))

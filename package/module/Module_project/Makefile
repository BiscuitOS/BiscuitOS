################################################
#
# Module Project
#
################################################
PK_MOD_PROJ_NAME        := Module_project
PK_MOD_PROJ_VERSION     := $(CONFIG_PK_MOD_PROJ_VERSION)
PK_MOD_PROJ_SITE        := $(CONFIG_PK_MOD_PROJ_URL)
PK_MOD_PROJ_GITHUB      := $(CONFIG_PK_MOD_PROJ_GITHUB)
PK_MOD_PROJ_SUBNAME     :=
PK_MOD_PROJ_BUILDARCH   := $(CONFIG_PK_MOD_PROJ_BUILDARCH)
PK_MOD_PROJ_DIR         := $(srctree)/package/module/Module_project
PK_MOD_PROJ_PATCH       := $(PK_MOD_PROJ_DIR)/patch
PK_MOD_PROJ_BSBIT       := Module_project-$(PK_MOD_PROJ_VERSION).bsbit
PK_MOD_PROJ_OUT         :=
PK_MOD_PROJ_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MOD_PROJ_TAR         := $(CONFIG_PK_MOD_PROJ_TAR)
PK_MOD_PROJ_PACKAGE     :=
PK_MOD_PROJ_CONFIG      := $(CONFIG_PK_MOD_PROJ_CONFIG)
SUB_TARGET                  += $(PK_MOD_PROJ_DIR)/build

PK_MOD_PROJ_sh = $(CONFIG_SHELL) $(PK_MOD_PROJ_SCRIPTS) \
                 $1X \
                 $(PK_MOD_PROJ_NAME)X \
                 $(PK_MOD_PROJ_VERSION)X \
                 $(PK_MOD_PROJ_SITE)X \
                 $(PK_MOD_PROJ_GITHUB)X \
                 $(PK_MOD_PROJ_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MOD_PROJ_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MOD_PROJ_SUBNAME)X \
                 $(CONFIG_PK_MOD_PROJ_CONFIG)X \
                 $(CONFIG_PK_MOD_PROJ_LIBPATH)X \
                 $(CONFIG_PK_MOD_PROJ_CPPFLAGS)X \
                 $(CONFIG_PK_MOD_PROJ_DPKCONFIG)X \
                 $(CONFIG_PK_MOD_PROJ_CFLAGS)X \
                 $(CONFIG_PK_MOD_PROJ_LDFLAGS)X \
                 $(CONFIG_PK_MOD_PROJ_CXXFLAGS)X \
                 $(CONFIG_PK_MOD_PROJ_ASFLAGS)X \
                 $(PK_MOD_PROJ_BSBIT)X \
                 $(PK_MOD_PROJ_BUILDARCH)X \
		 $(PK_MOD_PROJ_CSRCFILE)X \
                 $(CONFIG_PK_MOD_PROJ_SRCFILE)X \
                 $(CONFIG_PK_MOD_PROJ_CSRCFILE)

$(PK_MOD_PROJ_DIR)/build: FORCE
	$(Q)$(call PK_MOD_PROJ_sh,$(srctree))

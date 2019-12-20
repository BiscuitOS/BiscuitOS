################################################
#
# offsetof
#
################################################
PK_KH_OFFSETOF_NAME        := offsetof
PK_KH_OFFSETOF_VERSION     := $(CONFIG_PK_KH_OFFSETOF_VERSION)
PK_KH_OFFSETOF_SITE        := $(CONFIG_PK_KH_OFFSETOF_URL)
PK_KH_OFFSETOF_GITHUB      := $(CONFIG_PK_KH_OFFSETOF_GITHUB)
PK_KH_OFFSETOF_SUBNAME     :=
PK_KH_OFFSETOF_BUILDARCH   := $(CONFIG_PK_KH_OFFSETOF_BUILDARCH)
PK_KH_OFFSETOF_DIR         := $(srctree)/package/kernel_hacking/offsetof
PK_KH_OFFSETOF_PATCH       := $(PK_KH_OFFSETOF_DIR)/patch
PK_KH_OFFSETOF_BSBIT       := offsetof-$(PK_KH_OFFSETOF_VERSION).bsbit
PK_KH_OFFSETOF_OUT         :=
PK_KH_OFFSETOF_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KH_OFFSETOF_TAR         := $(CONFIG_PK_KH_OFFSETOF_TAR)
PK_KH_OFFSETOF_PACKAGE     :=
PK_KH_OFFSETOF_CONFIG      := $(CONFIG_PK_KH_OFFSETOF_CONFIG)
SUB_TARGET                  += $(PK_KH_OFFSETOF_DIR)/build

PK_KH_OFFSETOF_sh = $(CONFIG_SHELL) $(PK_KH_OFFSETOF_SCRIPTS) \
                 $1X \
                 $(PK_KH_OFFSETOF_NAME)X \
                 $(PK_KH_OFFSETOF_VERSION)X \
                 $(PK_KH_OFFSETOF_SITE)X \
                 $(PK_KH_OFFSETOF_GITHUB)X \
                 $(PK_KH_OFFSETOF_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KH_OFFSETOF_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KH_OFFSETOF_SUBNAME)X \
                 $(CONFIG_PK_KH_OFFSETOF_CONFIG)X \
                 $(CONFIG_PK_KH_OFFSETOF_LIBPATH)X \
                 $(CONFIG_PK_KH_OFFSETOF_CPPFLAGS)X \
                 $(CONFIG_PK_KH_OFFSETOF_DPKCONFIG)X \
                 $(CONFIG_PK_KH_OFFSETOF_CFLAGS)X \
                 $(CONFIG_PK_KH_OFFSETOF_LDFLAGS)X \
                 $(CONFIG_PK_KH_OFFSETOF_CXXFLAGS)X \
                 $(CONFIG_PK_KH_OFFSETOF_ASFLAGS)X \
                 $(PK_KH_OFFSETOF_BSBIT)X \
                 $(PK_KH_OFFSETOF_BUILDARCH)X \
		 $(PK_KH_OFFSETOF_CSRCFILE)X \
                 $(CONFIG_PK_KH_OFFSETOF_SRCFILE)X \
                 $(CONFIG_PK_KH_OFFSETOF_CSRCFILE)

$(PK_KH_OFFSETOF_DIR)/build: FORCE
	$(Q)$(call PK_KH_OFFSETOF_sh,$(srctree))

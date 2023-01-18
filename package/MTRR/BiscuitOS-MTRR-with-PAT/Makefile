################################################
#
# BiscuitOS-MTRR-with-PAT
#
################################################
PK_MTRR_PAT_NAME        := BiscuitOS-MTRR-with-PAT
PK_MTRR_PAT_VERSION     := $(CONFIG_PK_MTRR_PAT_VERSION)
PK_MTRR_PAT_SITE        := $(CONFIG_PK_MTRR_PAT_URL)
PK_MTRR_PAT_GITHUB      := $(CONFIG_PK_MTRR_PAT_GITHUB)
PK_MTRR_PAT_SUBNAME     :=
PK_MTRR_PAT_BUILDARCH   := $(CONFIG_PK_MTRR_PAT_BUILDARCH)
PK_MTRR_PAT_DIR         := $(srctree)/package/MTRR/BiscuitOS-MTRR-with-PAT
PK_MTRR_PAT_PATCH       := $(PK_MTRR_PAT_DIR)/patch
PK_MTRR_PAT_BSBIT       := BiscuitOS-MTRR-with-PAT-$(PK_MTRR_PAT_VERSION).bsbit
PK_MTRR_PAT_OUT         :=
PK_MTRR_PAT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MTRR_PAT_TAR         := $(CONFIG_PK_MTRR_PAT_TAR)
PK_MTRR_PAT_PACKAGE     :=
PK_MTRR_PAT_CONFIG      := $(CONFIG_PK_MTRR_PAT_CONFIG)
SUB_TARGET                  += $(PK_MTRR_PAT_DIR)/build

PK_MTRR_PAT_sh = $(CONFIG_SHELL) $(PK_MTRR_PAT_SCRIPTS) \
                 $1X \
                 $(PK_MTRR_PAT_NAME)X \
                 $(PK_MTRR_PAT_VERSION)X \
                 $(PK_MTRR_PAT_SITE)X \
                 $(PK_MTRR_PAT_GITHUB)X \
                 $(PK_MTRR_PAT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MTRR_PAT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MTRR_PAT_SUBNAME)X \
                 $(CONFIG_PK_MTRR_PAT_CONFIG)X \
                 $(CONFIG_PK_MTRR_PAT_LIBPATH)X \
                 $(CONFIG_PK_MTRR_PAT_CPPFLAGS)X \
                 $(CONFIG_PK_MTRR_PAT_DPKCONFIG)X \
                 $(CONFIG_PK_MTRR_PAT_CFLAGS)X \
                 $(CONFIG_PK_MTRR_PAT_LDFLAGS)X \
                 $(CONFIG_PK_MTRR_PAT_CXXFLAGS)X \
                 $(CONFIG_PK_MTRR_PAT_ASFLAGS)X \
                 $(PK_MTRR_PAT_BSBIT)X \
                 $(PK_MTRR_PAT_BUILDARCH)X \
		 $(PK_MTRR_PAT_CSRCFILE)X \
                 $(CONFIG_PK_MTRR_PAT_SRCFILE)X \
                 $(CONFIG_PK_MTRR_PAT_CSRCFILE)

$(PK_MTRR_PAT_DIR)/build: FORCE
	$(Q)$(call PK_MTRR_PAT_sh,$(srctree))

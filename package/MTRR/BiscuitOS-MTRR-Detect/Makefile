################################################
#
# BiscuitOS-MTRR-Detect
#
################################################
PK_MTRR_DETECT_NAME        := BiscuitOS-MTRR-Detect
PK_MTRR_DETECT_VERSION     := $(CONFIG_PK_MTRR_DETECT_VERSION)
PK_MTRR_DETECT_SITE        := $(CONFIG_PK_MTRR_DETECT_URL)
PK_MTRR_DETECT_GITHUB      := $(CONFIG_PK_MTRR_DETECT_GITHUB)
PK_MTRR_DETECT_SUBNAME     :=
PK_MTRR_DETECT_BUILDARCH   := $(CONFIG_PK_MTRR_DETECT_BUILDARCH)
PK_MTRR_DETECT_DIR         := $(srctree)/package/MTRR/BiscuitOS-MTRR-Detect
PK_MTRR_DETECT_PATCH       := $(PK_MTRR_DETECT_DIR)/patch
PK_MTRR_DETECT_BSBIT       := BiscuitOS-MTRR-Detect-$(PK_MTRR_DETECT_VERSION).bsbit
PK_MTRR_DETECT_OUT         :=
PK_MTRR_DETECT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MTRR_DETECT_TAR         := $(CONFIG_PK_MTRR_DETECT_TAR)
PK_MTRR_DETECT_PACKAGE     :=
PK_MTRR_DETECT_CONFIG      := $(CONFIG_PK_MTRR_DETECT_CONFIG)
SUB_TARGET                  += $(PK_MTRR_DETECT_DIR)/build

PK_MTRR_DETECT_sh = $(CONFIG_SHELL) $(PK_MTRR_DETECT_SCRIPTS) \
                 $1X \
                 $(PK_MTRR_DETECT_NAME)X \
                 $(PK_MTRR_DETECT_VERSION)X \
                 $(PK_MTRR_DETECT_SITE)X \
                 $(PK_MTRR_DETECT_GITHUB)X \
                 $(PK_MTRR_DETECT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MTRR_DETECT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MTRR_DETECT_SUBNAME)X \
                 $(CONFIG_PK_MTRR_DETECT_CONFIG)X \
                 $(CONFIG_PK_MTRR_DETECT_LIBPATH)X \
                 $(CONFIG_PK_MTRR_DETECT_CPPFLAGS)X \
                 $(CONFIG_PK_MTRR_DETECT_DPKCONFIG)X \
                 $(CONFIG_PK_MTRR_DETECT_CFLAGS)X \
                 $(CONFIG_PK_MTRR_DETECT_LDFLAGS)X \
                 $(CONFIG_PK_MTRR_DETECT_CXXFLAGS)X \
                 $(CONFIG_PK_MTRR_DETECT_ASFLAGS)X \
                 $(PK_MTRR_DETECT_BSBIT)X \
                 $(PK_MTRR_DETECT_BUILDARCH)X \
		 $(PK_MTRR_DETECT_CSRCFILE)X \
                 $(CONFIG_PK_MTRR_DETECT_SRCFILE)X \
                 $(CONFIG_PK_MTRR_DETECT_CSRCFILE)

$(PK_MTRR_DETECT_DIR)/build: FORCE
	$(Q)$(call PK_MTRR_DETECT_sh,$(srctree))

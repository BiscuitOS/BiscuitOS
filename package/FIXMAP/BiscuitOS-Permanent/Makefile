################################################
#
# BiscuitOS-Permanent
#
################################################
PK_PERMANENT_NAME        := BiscuitOS-Permanent
PK_PERMANENT_VERSION     := $(CONFIG_PK_PERMANENT_VERSION)
PK_PERMANENT_SITE        := $(CONFIG_PK_PERMANENT_URL)
PK_PERMANENT_GITHUB      := $(CONFIG_PK_PERMANENT_GITHUB)
PK_PERMANENT_SUBNAME     :=
PK_PERMANENT_BUILDARCH   := $(CONFIG_PK_PERMANENT_BUILDARCH)
PK_PERMANENT_DIR         := $(srctree)/package/FIXMAP/BiscuitOS-Permanent
PK_PERMANENT_PATCH       := $(PK_PERMANENT_DIR)/patch
PK_PERMANENT_BSBIT       := BiscuitOS-Permanent-$(PK_PERMANENT_VERSION).bsbit
PK_PERMANENT_OUT         :=
PK_PERMANENT_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_PERMANENT_TAR         := $(CONFIG_PK_PERMANENT_TAR)
PK_PERMANENT_PACKAGE     :=
PK_PERMANENT_CONFIG      := $(CONFIG_PK_PERMANENT_CONFIG)
SUB_TARGET                  += $(PK_PERMANENT_DIR)/build

PK_PERMANENT_sh = $(CONFIG_SHELL) $(PK_PERMANENT_SCRIPTS) \
                 $1X \
                 $(PK_PERMANENT_NAME)X \
                 $(PK_PERMANENT_VERSION)X \
                 $(PK_PERMANENT_SITE)X \
                 $(PK_PERMANENT_GITHUB)X \
                 $(PK_PERMANENT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PERMANENT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PERMANENT_SUBNAME)X \
                 $(CONFIG_PK_PERMANENT_CONFIG)X \
                 $(CONFIG_PK_PERMANENT_LIBPATH)X \
                 $(CONFIG_PK_PERMANENT_CPPFLAGS)X \
                 $(CONFIG_PK_PERMANENT_DPKCONFIG)X \
                 $(CONFIG_PK_PERMANENT_CFLAGS)X \
                 $(CONFIG_PK_PERMANENT_LDFLAGS)X \
                 $(CONFIG_PK_PERMANENT_CXXFLAGS)X \
                 $(CONFIG_PK_PERMANENT_ASFLAGS)X \
                 $(PK_PERMANENT_BSBIT)X \
                 $(PK_PERMANENT_BUILDARCH)X \
		 $(PK_PERMANENT_CSRCFILE)X \
                 $(CONFIG_PK_PERMANENT_SRCFILE)X \
                 $(CONFIG_PK_PERMANENT_CSRCFILE)

$(PK_PERMANENT_DIR)/build: FORCE
	$(Q)$(call PK_PERMANENT_sh,$(srctree))

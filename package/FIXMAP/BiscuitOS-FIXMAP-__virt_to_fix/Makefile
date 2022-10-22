################################################
#
# BiscuitOS-FIXMAP-__virt_to_fix
#
################################################
PK_FIXMAP__VIRT_TO_FIX_NAME        := BiscuitOS-FIXMAP-__virt_to_fix
PK_FIXMAP__VIRT_TO_FIX_VERSION     := $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_VERSION)
PK_FIXMAP__VIRT_TO_FIX_SITE        := $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_URL)
PK_FIXMAP__VIRT_TO_FIX_GITHUB      := $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_GITHUB)
PK_FIXMAP__VIRT_TO_FIX_SUBNAME     :=
PK_FIXMAP__VIRT_TO_FIX_BUILDARCH   := $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_BUILDARCH)
PK_FIXMAP__VIRT_TO_FIX_DIR         := $(srctree)/package/FIXMAP/BiscuitOS-FIXMAP-__virt_to_fix
PK_FIXMAP__VIRT_TO_FIX_PATCH       := $(PK_FIXMAP__VIRT_TO_FIX_DIR)/patch
PK_FIXMAP__VIRT_TO_FIX_BSBIT       := BiscuitOS-FIXMAP-__virt_to_fix-$(PK_FIXMAP__VIRT_TO_FIX_VERSION).bsbit
PK_FIXMAP__VIRT_TO_FIX_OUT         :=
PK_FIXMAP__VIRT_TO_FIX_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_FIXMAP__VIRT_TO_FIX_TAR         := $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_TAR)
PK_FIXMAP__VIRT_TO_FIX_PACKAGE     :=
PK_FIXMAP__VIRT_TO_FIX_CONFIG      := $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_CONFIG)
SUB_TARGET                  += $(PK_FIXMAP__VIRT_TO_FIX_DIR)/build

PK_FIXMAP__VIRT_TO_FIX_sh = $(CONFIG_SHELL) $(PK_FIXMAP__VIRT_TO_FIX_SCRIPTS) \
                 $1X \
                 $(PK_FIXMAP__VIRT_TO_FIX_NAME)X \
                 $(PK_FIXMAP__VIRT_TO_FIX_VERSION)X \
                 $(PK_FIXMAP__VIRT_TO_FIX_SITE)X \
                 $(PK_FIXMAP__VIRT_TO_FIX_GITHUB)X \
                 $(PK_FIXMAP__VIRT_TO_FIX_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FIXMAP__VIRT_TO_FIX_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FIXMAP__VIRT_TO_FIX_SUBNAME)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_CONFIG)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_LIBPATH)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_CPPFLAGS)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_DPKCONFIG)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_CFLAGS)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_LDFLAGS)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_CXXFLAGS)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_ASFLAGS)X \
                 $(PK_FIXMAP__VIRT_TO_FIX_BSBIT)X \
                 $(PK_FIXMAP__VIRT_TO_FIX_BUILDARCH)X \
		 $(PK_FIXMAP__VIRT_TO_FIX_CSRCFILE)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_SRCFILE)X \
                 $(CONFIG_PK_FIXMAP__VIRT_TO_FIX_CSRCFILE)

$(PK_FIXMAP__VIRT_TO_FIX_DIR)/build: FORCE
	$(Q)$(call PK_FIXMAP__VIRT_TO_FIX_sh,$(srctree))

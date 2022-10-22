################################################
#
# BiscuitOS-FIXMAP-__fix_to_virt
#
################################################
PK_FIXMAP__FIX_TO_VIRT_NAME        := BiscuitOS-FIXMAP-__fix_to_virt
PK_FIXMAP__FIX_TO_VIRT_VERSION     := $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_VERSION)
PK_FIXMAP__FIX_TO_VIRT_SITE        := $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_URL)
PK_FIXMAP__FIX_TO_VIRT_GITHUB      := $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_GITHUB)
PK_FIXMAP__FIX_TO_VIRT_SUBNAME     :=
PK_FIXMAP__FIX_TO_VIRT_BUILDARCH   := $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_BUILDARCH)
PK_FIXMAP__FIX_TO_VIRT_DIR         := $(srctree)/package/FIXMAP/BiscuitOS-FIXMAP-__fix_to_virt
PK_FIXMAP__FIX_TO_VIRT_PATCH       := $(PK_FIXMAP__FIX_TO_VIRT_DIR)/patch
PK_FIXMAP__FIX_TO_VIRT_BSBIT       := BiscuitOS-FIXMAP-__fix_to_virt-$(PK_FIXMAP__FIX_TO_VIRT_VERSION).bsbit
PK_FIXMAP__FIX_TO_VIRT_OUT         :=
PK_FIXMAP__FIX_TO_VIRT_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_FIXMAP__FIX_TO_VIRT_TAR         := $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_TAR)
PK_FIXMAP__FIX_TO_VIRT_PACKAGE     :=
PK_FIXMAP__FIX_TO_VIRT_CONFIG      := $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_CONFIG)
SUB_TARGET                  += $(PK_FIXMAP__FIX_TO_VIRT_DIR)/build

PK_FIXMAP__FIX_TO_VIRT_sh = $(CONFIG_SHELL) $(PK_FIXMAP__FIX_TO_VIRT_SCRIPTS) \
                 $1X \
                 $(PK_FIXMAP__FIX_TO_VIRT_NAME)X \
                 $(PK_FIXMAP__FIX_TO_VIRT_VERSION)X \
                 $(PK_FIXMAP__FIX_TO_VIRT_SITE)X \
                 $(PK_FIXMAP__FIX_TO_VIRT_GITHUB)X \
                 $(PK_FIXMAP__FIX_TO_VIRT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FIXMAP__FIX_TO_VIRT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FIXMAP__FIX_TO_VIRT_SUBNAME)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_CONFIG)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_LIBPATH)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_CPPFLAGS)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_DPKCONFIG)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_CFLAGS)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_LDFLAGS)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_CXXFLAGS)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_ASFLAGS)X \
                 $(PK_FIXMAP__FIX_TO_VIRT_BSBIT)X \
                 $(PK_FIXMAP__FIX_TO_VIRT_BUILDARCH)X \
		 $(PK_FIXMAP__FIX_TO_VIRT_CSRCFILE)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_SRCFILE)X \
                 $(CONFIG_PK_FIXMAP__FIX_TO_VIRT_CSRCFILE)

$(PK_FIXMAP__FIX_TO_VIRT_DIR)/build: FORCE
	$(Q)$(call PK_FIXMAP__FIX_TO_VIRT_sh,$(srctree))

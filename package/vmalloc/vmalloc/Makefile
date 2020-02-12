################################################
#
# vmalloc
#
################################################
PK_VMALLOC_F_NAME        := vmalloc
PK_VMALLOC_F_VERSION     := $(CONFIG_PK_VMALLOC_F_VERSION)
PK_VMALLOC_F_SITE        := $(CONFIG_PK_VMALLOC_F_URL)
PK_VMALLOC_F_GITHUB      := $(CONFIG_PK_VMALLOC_F_GITHUB)
PK_VMALLOC_F_SUBNAME     :=
PK_VMALLOC_F_BUILDARCH   := $(CONFIG_PK_VMALLOC_F_BUILDARCH)
PK_VMALLOC_F_DIR         := $(srctree)/package/vmalloc/vmalloc
PK_VMALLOC_F_PATCH       := $(PK_VMALLOC_F_DIR)/patch
PK_VMALLOC_F_BSBIT       := vmalloc-$(PK_VMALLOC_F_VERSION).bsbit
PK_VMALLOC_F_OUT         :=
PK_VMALLOC_F_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_VMALLOC_F_TAR         := $(CONFIG_PK_VMALLOC_F_TAR)
PK_VMALLOC_F_PACKAGE     :=
PK_VMALLOC_F_CONFIG      := $(CONFIG_PK_VMALLOC_F_CONFIG)
SUB_TARGET                  += $(PK_VMALLOC_F_DIR)/build

PK_VMALLOC_F_sh = $(CONFIG_SHELL) $(PK_VMALLOC_F_SCRIPTS) \
                 $1X \
                 $(PK_VMALLOC_F_NAME)X \
                 $(PK_VMALLOC_F_VERSION)X \
                 $(PK_VMALLOC_F_SITE)X \
                 $(PK_VMALLOC_F_GITHUB)X \
                 $(PK_VMALLOC_F_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_VMALLOC_F_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_VMALLOC_F_SUBNAME)X \
                 $(CONFIG_PK_VMALLOC_F_CONFIG)X \
                 $(CONFIG_PK_VMALLOC_F_LIBPATH)X \
                 $(CONFIG_PK_VMALLOC_F_CPPFLAGS)X \
                 $(CONFIG_PK_VMALLOC_F_DPKCONFIG)X \
                 $(CONFIG_PK_VMALLOC_F_CFLAGS)X \
                 $(CONFIG_PK_VMALLOC_F_LDFLAGS)X \
                 $(CONFIG_PK_VMALLOC_F_CXXFLAGS)X \
                 $(CONFIG_PK_VMALLOC_F_ASFLAGS)X \
                 $(PK_VMALLOC_F_BSBIT)X \
                 $(PK_VMALLOC_F_BUILDARCH)X \
		 $(PK_VMALLOC_F_CSRCFILE)X \
                 $(CONFIG_PK_VMALLOC_F_SRCFILE)X \
                 $(CONFIG_PK_VMALLOC_F_CSRCFILE)

$(PK_VMALLOC_F_DIR)/build: FORCE
	$(Q)$(call PK_VMALLOC_F_sh,$(srctree))

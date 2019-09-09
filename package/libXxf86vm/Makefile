################################################
#
# libXxf86vm
#
################################################
PK_LIBXXF86VM_NAME        := libXxf86vm
PK_LIBXXF86VM_VERSION     := $(CONFIG_PK_LIBXXF86VM_VERSION)
PK_LIBXXF86VM_SITE        := $(CONFIG_PK_LIBXXF86VM_URL)
PK_LIBXXF86VM_GITHUB      := $(CONFIG_PK_LIBXXF86VM_GITHUB)
PK_LIBXXF86VM_SUBNAME     :=
PK_LIBXXF86VM_BUILDARCH   := $(CONFIG_PK_LIBXXF86VM_BUILDARCH)
PK_LIBXXF86VM_DIR         := $(srctree)/package/libXxf86vm
PK_LIBXXF86VM_PATCH       := $(PK_LIBXXF86VM_DIR)/patch
PK_LIBXXF86VM_BSBIT       := libXxf86vm-$(PK_LIBXXF86VM_VERSION).bsbit
PK_LIBXXF86VM_OUT         :=
PK_LIBXXF86VM_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXXF86VM_TAR         := $(CONFIG_PK_LIBXXF86VM_TAR)
PK_LIBXXF86VM_PACKAGE     :=
PK_LIBXXF86VM_CONFIG      := $(CONFIG_PK_LIBXXF86VM_CONFIG)
SUB_TARGET                += $(PK_LIBXXF86VM_DIR)/build

PK_LIBXXF86VM_sh = $(CONFIG_SHELL) $(PK_LIBXXF86VM_SCRIPTS) \
                 $1X \
                 $(PK_LIBXXF86VM_NAME)X \
                 $(PK_LIBXXF86VM_VERSION)X \
                 $(PK_LIBXXF86VM_SITE)X \
                 $(PK_LIBXXF86VM_GITHUB)X \
                 $(PK_LIBXXF86VM_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXXF86VM_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXXF86VM_SUBNAME)X \
                 $(CONFIG_PK_LIBXXF86VM_CONFIG)X \
                 $(CONFIG_PK_LIBXXF86VM_LIBPATH)X \
                 $(CONFIG_PK_LIBXXF86VM_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXXF86VM_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXXF86VM_CFLAGS)X \
                 $(CONFIG_PK_LIBXXF86VM_LDFLAGS)X \
                 $(CONFIG_PK_LIBXXF86VM_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXXF86VM_ASFLAGS)X \
                 $(PK_LIBXXF86VM_BSBIT)X \
                 $(PK_LIBXXF86VM_BUILDARCH)X

$(PK_LIBXXF86VM_DIR)/build: FORCE
	$(Q)$(call PK_LIBXXF86VM_sh,$(srctree))

################################################
#
# libvirt
#
################################################
PK_LIBVIRT_NAME        := libvirt
PK_LIBVIRT_VERSION     := $(CONFIG_PK_LIBVIRT_VERSION)
PK_LIBVIRT_SITE        := $(CONFIG_PK_LIBVIRT_URL)
PK_LIBVIRT_GITHUB      := $(CONFIG_PK_LIBVIRT_GITHUB)
PK_LIBVIRT_SUBNAME     :=
PK_LIBVIRT_BUILDARCH   := $(CONFIG_PK_LIBVIRT_BUILDARCH)
PK_LIBVIRT_DIR         := $(srctree)/package/libvirt
PK_LIBVIRT_PATCH       := $(PK_LIBVIRT_DIR)/patch
PK_LIBVIRT_BSBIT       := libvirt-$(PK_LIBVIRT_VERSION).bsbit
PK_LIBVIRT_OUT         :=
PK_LIBVIRT_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBVIRT_TAR         := $(CONFIG_PK_LIBVIRT_TAR)
PK_LIBVIRT_PACKAGE     :=
PK_LIBVIRT_CONFIG      := $(CONFIG_PK_LIBVIRT_CONFIG)
SUB_TARGET            += $(PK_LIBVIRT_DIR)/build

PK_LIBVIRT_sh = $(CONFIG_SHELL) $(PK_LIBVIRT_SCRIPTS) \
                 $1X \
                 $(PK_LIBVIRT_NAME)X \
                 $(PK_LIBVIRT_VERSION)X \
                 $(PK_LIBVIRT_SITE)X \
                 $(PK_LIBVIRT_GITHUB)X \
                 $(PK_LIBVIRT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBVIRT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBVIRT_SUBNAME)X \
                 $(CONFIG_PK_LIBVIRT_CONFIG)X \
                 $(CONFIG_PK_LIBVIRT_LIBPATH)X \
                 $(CONFIG_PK_LIBVIRT_CPPFLAGS)X \
                 $(CONFIG_PK_LIBVIRT_DPKCONFIG)X \
                 $(CONFIG_PK_LIBVIRT_CFLAGS)X \
                 $(CONFIG_PK_LIBVIRT_LDFLAGS)X \
                 $(CONFIG_PK_LIBVIRT_CXXFLAGS)X \
                 $(CONFIG_PK_LIBVIRT_ASFLAGS)X \
                 $(PK_LIBVIRT_BSBIT)X \
                 $(PK_LIBVIRT_BUILDARCH)X

$(PK_LIBVIRT_DIR)/build: FORCE
	$(Q)$(call PK_LIBVIRT_sh,$(srctree))

################################################
#
# libdrm
#
################################################
PK_LIBDRM_NAME        := libdrm
PK_LIBDRM_VERSION     := $(CONFIG_PK_LIBDRM_VERSION)
PK_LIBDRM_SITE        := $(CONFIG_PK_LIBDRM_URL)
PK_LIBDRM_GITHUB      := $(CONFIG_PK_LIBDRM_GITHUB)
PK_LIBDRM_SUBNAME     :=
PK_LIBDRM_BUILDARCH   := $(CONFIG_PK_LIBDRM_BUILDARCH)
PK_LIBDRM_DIR         := $(srctree)/package/libdrm
PK_LIBDRM_PATCH       := $(PK_LIBDRM_DIR)/patch
PK_LIBDRM_BSBIT       := libdrm-$(PK_LIBDRM_VERSION).bsbit
PK_LIBDRM_OUT         :=
PK_LIBDRM_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBDRM_TAR         := $(CONFIG_PK_LIBDRM_TAR)
PK_LIBDRM_PACKAGE     :=
PK_LIBDRM_CONFIG      := $(CONFIG_PK_LIBDRM_CONFIG)
SUB_TARGET            += $(PK_LIBDRM_DIR)/build

PK_LIBDRM_sh = $(CONFIG_SHELL) $(PK_LIBDRM_SCRIPTS) \
                 $1X \
                 $(PK_LIBDRM_NAME)X \
                 $(PK_LIBDRM_VERSION)X \
                 $(PK_LIBDRM_SITE)X \
                 $(PK_LIBDRM_GITHUB)X \
                 $(PK_LIBDRM_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBDRM_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBDRM_SUBNAME)X \
                 $(CONFIG_PK_LIBDRM_CONFIG)X \
                 $(CONFIG_PK_LIBDRM_LIBPATH)X \
                 $(CONFIG_PK_LIBDRM_CPPFLAGS)X \
                 $(CONFIG_PK_LIBDRM_DPKCONFIG)X \
                 $(CONFIG_PK_LIBDRM_CFLAGS)X \
                 $(CONFIG_PK_LIBDRM_LDFLAGS)X \
                 $(CONFIG_PK_LIBDRM_CXXFLAGS)X \
                 $(CONFIG_PK_LIBDRM_ASFLAGS)X \
                 $(PK_LIBDRM_BSBIT)X \
                 $(PK_LIBDRM_BUILDARCH)X

$(PK_LIBDRM_DIR)/build: FORCE
	$(Q)$(call PK_LIBDRM_sh,$(srctree))

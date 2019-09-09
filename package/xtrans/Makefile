################################################
#
# xtrans
#
################################################
PK_XTRANS_NAME        := xtrans
PK_XTRANS_VERSION     := $(CONFIG_PK_XTRANS_VERSION)
PK_XTRANS_SITE        := $(CONFIG_PK_XTRANS_URL)
PK_XTRANS_GITHUB      := $(CONFIG_PK_XTRANS_GITHUB)
PK_XTRANS_SUBNAME     :=
PK_XTRANS_BUILDARCH   := $(CONFIG_PK_XTRANS_BUILDARCH)
PK_XTRANS_DIR         := $(srctree)/package/xtrans
PK_XTRANS_PATCH       := $(PK_XTRANS_DIR)/patch
PK_XTRANS_BSBIT       := xtrans-$(PK_XTRANS_VERSION).bsbit
PK_XTRANS_OUT         :=
PK_XTRANS_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_XTRANS_TAR         := $(CONFIG_PK_XTRANS_TAR)
PK_XTRANS_PACKAGE     :=
PK_XTRANS_CONFIG      := $(CONFIG_PK_XTRANS_CONFIG)
SUB_TARGET            += $(PK_XTRANS_DIR)/build

PK_XTRANS_sh = $(CONFIG_SHELL) $(PK_XTRANS_SCRIPTS) \
                 $1X \
                 $(PK_XTRANS_NAME)X \
                 $(PK_XTRANS_VERSION)X \
                 $(PK_XTRANS_SITE)X \
                 $(PK_XTRANS_GITHUB)X \
                 $(PK_XTRANS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_XTRANS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_XTRANS_SUBNAME)X \
                 $(CONFIG_PK_XTRANS_CONFIG)X \
                 $(CONFIG_PK_XTRANS_LIBPATH)X \
                 $(CONFIG_PK_XTRANS_CPPFLAGS)X \
                 $(CONFIG_PK_XTRANS_DPKCONFIG)X \
                 $(CONFIG_PK_XTRANS_CFLAGS)X \
                 $(CONFIG_PK_XTRANS_LDFLAGS)X \
                 $(CONFIG_PK_XTRANS_CXXFLAGS)X \
                 $(CONFIG_PK_XTRANS_ASFLAGS)X \
                 $(PK_XTRANS_BSBIT)X \
                 $(PK_XTRANS_BUILDARCH)X

$(PK_XTRANS_DIR)/build: FORCE
	$(Q)$(call PK_XTRANS_sh,$(srctree))

################################################
#
# xcmiscproto
#
################################################
PK_XCMISCPROTO_NAME        := xcmiscproto
PK_XCMISCPROTO_VERSION     := $(CONFIG_PK_XCMISCPROTO_VERSION)
PK_XCMISCPROTO_SITE        := $(CONFIG_PK_XCMISCPROTO_URL)
PK_XCMISCPROTO_GITHUB      := $(CONFIG_PK_XCMISCPROTO_GITHUB)
PK_XCMISCPROTO_SUBNAME     :=
PK_XCMISCPROTO_BUILDARCH   := $(CONFIG_PK_XCMISCPROTO_BUILDARCH)
PK_XCMISCPROTO_DIR         := $(srctree)/package/xcmiscproto
PK_XCMISCPROTO_PATCH       := $(PK_XCMISCPROTO_DIR)/patch
PK_XCMISCPROTO_BSBIT       := xcmiscproto-$(PK_XCMISCPROTO_VERSION).bsbit
PK_XCMISCPROTO_OUT         :=
PK_XCMISCPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_XCMISCPROTO_TAR         := $(CONFIG_PK_XCMISCPROTO_TAR)
PK_XCMISCPROTO_PACKAGE     :=
PK_XCMISCPROTO_CONFIG      := $(CONFIG_PK_XCMISCPROTO_CONFIG)
SUB_TARGET                 += $(PK_XCMISCPROTO_DIR)/build

PK_XCMISCPROTO_sh = $(CONFIG_SHELL) $(PK_XCMISCPROTO_SCRIPTS) \
                 $1X \
                 $(PK_XCMISCPROTO_NAME)X \
                 $(PK_XCMISCPROTO_VERSION)X \
                 $(PK_XCMISCPROTO_SITE)X \
                 $(PK_XCMISCPROTO_GITHUB)X \
                 $(PK_XCMISCPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_XCMISCPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_XCMISCPROTO_SUBNAME)X \
                 $(CONFIG_PK_XCMISCPROTO_CONFIG)X \
                 $(CONFIG_PK_XCMISCPROTO_LIBPATH)X \
                 $(CONFIG_PK_XCMISCPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_XCMISCPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_XCMISCPROTO_CFLAGS)X \
                 $(CONFIG_PK_XCMISCPROTO_LDFLAGS)X \
                 $(CONFIG_PK_XCMISCPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_XCMISCPROTO_ASFLAGS)X \
                 $(PK_XCMISCPROTO_BSBIT)X \
                 $(PK_XCMISCPROTO_BUILDARCH)X

$(PK_XCMISCPROTO_DIR)/build: FORCE
	$(Q)$(call PK_XCMISCPROTO_sh,$(srctree))

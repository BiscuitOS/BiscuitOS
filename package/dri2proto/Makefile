################################################
#
# dri2proto
#
################################################
PK_DRI2PROTO_NAME        := dri2proto
PK_DRI2PROTO_VERSION     := $(CONFIG_PK_DRI2PROTO_VERSION)
PK_DRI2PROTO_SITE        := $(CONFIG_PK_DRI2PROTO_URL)
PK_DRI2PROTO_GITHUB      := $(CONFIG_PK_DRI2PROTO_GITHUB)
PK_DRI2PROTO_SUBNAME     :=
PK_DRI2PROTO_BUILDARCH   := $(CONFIG_PK_DRI2PROTO_BUILDARCH)
PK_DRI2PROTO_DIR         := $(srctree)/package/dri2proto
PK_DRI2PROTO_PATCH       := $(PK_DRI2PROTO_DIR)/patch
PK_DRI2PROTO_BSBIT       := dri2proto-$(PK_DRI2PROTO_VERSION).bsbit
PK_DRI2PROTO_OUT         :=
PK_DRI2PROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_DRI2PROTO_TAR         := $(CONFIG_PK_DRI2PROTO_TAR)
PK_DRI2PROTO_PACKAGE     :=
PK_DRI2PROTO_CONFIG      := $(CONFIG_PK_DRI2PROTO_CONFIG)
SUB_TARGET               += $(PK_DRI2PROTO_DIR)/build

PK_DRI2PROTO_sh = $(CONFIG_SHELL) $(PK_DRI2PROTO_SCRIPTS) \
                 $1X \
                 $(PK_DRI2PROTO_NAME)X \
                 $(PK_DRI2PROTO_VERSION)X \
                 $(PK_DRI2PROTO_SITE)X \
                 $(PK_DRI2PROTO_GITHUB)X \
                 $(PK_DRI2PROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DRI2PROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DRI2PROTO_SUBNAME)X \
                 $(CONFIG_PK_DRI2PROTO_CONFIG)X \
                 $(CONFIG_PK_DRI2PROTO_LIBPATH)X \
                 $(CONFIG_PK_DRI2PROTO_CPPFLAGS)X \
                 $(CONFIG_PK_DRI2PROTO_DPKCONFIG)X \
                 $(CONFIG_PK_DRI2PROTO_CFLAGS)X \
                 $(CONFIG_PK_DRI2PROTO_LDFLAGS)X \
                 $(CONFIG_PK_DRI2PROTO_CXXFLAGS)X \
                 $(CONFIG_PK_DRI2PROTO_ASFLAGS)X \
                 $(PK_DRI2PROTO_BSBIT)X \
                 $(PK_DRI2PROTO_BUILDARCH)X

$(PK_DRI2PROTO_DIR)/build: FORCE
	$(Q)$(call PK_DRI2PROTO_sh,$(srctree))

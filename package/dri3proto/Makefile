################################################
#
# dri3proto
#
################################################
PK_DRI3PROTO_NAME        := dri3proto
PK_DRI3PROTO_VERSION     := $(CONFIG_PK_DRI3PROTO_VERSION)
PK_DRI3PROTO_SITE        := $(CONFIG_PK_DRI3PROTO_URL)
PK_DRI3PROTO_GITHUB      := $(CONFIG_PK_DRI3PROTO_GITHUB)
PK_DRI3PROTO_SUBNAME     :=
PK_DRI3PROTO_BUILDARCH   := $(CONFIG_PK_DRI3PROTO_BUILDARCH)
PK_DRI3PROTO_DIR         := $(srctree)/package/dri3proto
PK_DRI3PROTO_PATCH       := $(PK_DRI3PROTO_DIR)/patch
PK_DRI3PROTO_BSBIT       := dri3proto-$(PK_DRI3PROTO_VERSION).bsbit
PK_DRI3PROTO_OUT         :=
PK_DRI3PROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_DRI3PROTO_TAR         := $(CONFIG_PK_DRI3PROTO_TAR)
PK_DRI3PROTO_PACKAGE     :=
PK_DRI3PROTO_CONFIG      := $(CONFIG_PK_DRI3PROTO_CONFIG)
SUB_TARGET               += $(PK_DRI3PROTO_DIR)/build

PK_DRI3PROTO_sh = $(CONFIG_SHELL) $(PK_DRI3PROTO_SCRIPTS) \
                 $1X \
                 $(PK_DRI3PROTO_NAME)X \
                 $(PK_DRI3PROTO_VERSION)X \
                 $(PK_DRI3PROTO_SITE)X \
                 $(PK_DRI3PROTO_GITHUB)X \
                 $(PK_DRI3PROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DRI3PROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DRI3PROTO_SUBNAME)X \
                 $(CONFIG_PK_DRI3PROTO_CONFIG)X \
                 $(CONFIG_PK_DRI3PROTO_LIBPATH)X \
                 $(CONFIG_PK_DRI3PROTO_CPPFLAGS)X \
                 $(CONFIG_PK_DRI3PROTO_DPKCONFIG)X \
                 $(CONFIG_PK_DRI3PROTO_CFLAGS)X \
                 $(CONFIG_PK_DRI3PROTO_LDFLAGS)X \
                 $(CONFIG_PK_DRI3PROTO_CXXFLAGS)X \
                 $(CONFIG_PK_DRI3PROTO_ASFLAGS)X \
                 $(PK_DRI3PROTO_BSBIT)X \
                 $(PK_DRI3PROTO_BUILDARCH)X

$(PK_DRI3PROTO_DIR)/build: FORCE
	$(Q)$(call PK_DRI3PROTO_sh,$(srctree))

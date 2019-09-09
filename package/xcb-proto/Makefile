################################################
#
# xcb-proto
#
################################################
PK_XCB_PROTO_NAME        := xcb-proto
PK_XCB_PROTO_VERSION     := $(CONFIG_PK_XCB_PROTO_VERSION)
PK_XCB_PROTO_SITE        := $(CONFIG_PK_XCB_PROTO_URL)
PK_XCB_PROTO_GITHUB      := $(CONFIG_PK_XCB_PROTO_GITHUB)
PK_XCB_PROTO_SUBNAME     :=
PK_XCB_PROTO_BUILDARCH   := $(CONFIG_PK_XCB_PROTO_BUILDARCH)
PK_XCB_PROTO_DIR         := $(srctree)/package/xcb-proto
PK_XCB_PROTO_PATCH       := $(PK_XCB_PROTO_DIR)/patch
PK_XCB_PROTO_BSBIT       := xcb-proto-$(PK_XCB_PROTO_VERSION).bsbit
PK_XCB_PROTO_OUT         :=
PK_XCB_PROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_XCB_PROTO_TAR         := $(CONFIG_PK_XCB_PROTO_TAR)
PK_XCB_PROTO_PACKAGE     :=
PK_XCB_PROTO_CONFIG      := $(CONFIG_PK_XCB_PROTO_CONFIG)
SUB_TARGET               += $(PK_XCB_PROTO_DIR)/build

PK_XCB_PROTO_sh = $(CONFIG_SHELL) $(PK_XCB_PROTO_SCRIPTS) \
                 $1X \
                 $(PK_XCB_PROTO_NAME)X \
                 $(PK_XCB_PROTO_VERSION)X \
                 $(PK_XCB_PROTO_SITE)X \
                 $(PK_XCB_PROTO_GITHUB)X \
                 $(PK_XCB_PROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_XCB_PROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_XCB_PROTO_SUBNAME)X \
                 $(CONFIG_PK_XCB_PROTO_CONFIG)X \
                 $(CONFIG_PK_XCB_PROTO_LIBPATH)X \
                 $(CONFIG_PK_XCB_PROTO_CPPFLAGS)X \
                 $(CONFIG_PK_XCB_PROTO_DPKCONFIG)X \
                 $(CONFIG_PK_XCB_PROTO_CFLAGS)X \
                 $(CONFIG_PK_XCB_PROTO_LDFLAGS)X \
                 $(CONFIG_PK_XCB_PROTO_CXXFLAGS)X \
                 $(CONFIG_PK_XCB_PROTO_ASFLAGS)X \
                 $(PK_XCB_PROTO_BSBIT)X \
                 $(PK_XCB_PROTO_BUILDARCH)X

$(PK_XCB_PROTO_DIR)/build: FORCE
	$(Q)$(call PK_XCB_PROTO_sh,$(srctree))

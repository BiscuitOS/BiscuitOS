################################################
#
# libXdmcp
#
################################################
PK_LIBXDMCP_NAME        := libXdmcp
PK_LIBXDMCP_VERSION     := $(CONFIG_PK_LIBXDMCP_VERSION)
PK_LIBXDMCP_SITE        := $(CONFIG_PK_LIBXDMCP_URL)
PK_LIBXDMCP_GITHUB      := $(CONFIG_PK_LIBXDMCP_GITHUB)
PK_LIBXDMCP_SUBNAME     :=
PK_LIBXDMCP_BUILDARCH   := $(CONFIG_PK_LIBXDMCP_BUILDARCH)
PK_LIBXDMCP_DIR         := $(srctree)/package/libXdmcp
PK_LIBXDMCP_PATCH       := $(PK_LIBXDMCP_DIR)/patch
PK_LIBXDMCP_BSBIT       := libXdmcp-$(PK_LIBXDMCP_VERSION).bsbit
PK_LIBXDMCP_OUT         :=
PK_LIBXDMCP_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXDMCP_TAR         := $(CONFIG_PK_LIBXDMCP_TAR)
PK_LIBXDMCP_PACKAGE     :=
PK_LIBXDMCP_CONFIG      := $(CONFIG_PK_LIBXDMCP_CONFIG)
SUB_TARGET              += $(PK_LIBXDMCP_DIR)/build

PK_LIBXDMCP_sh = $(CONFIG_SHELL) $(PK_LIBXDMCP_SCRIPTS) \
                 $1X \
                 $(PK_LIBXDMCP_NAME)X \
                 $(PK_LIBXDMCP_VERSION)X \
                 $(PK_LIBXDMCP_SITE)X \
                 $(PK_LIBXDMCP_GITHUB)X \
                 $(PK_LIBXDMCP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXDMCP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXDMCP_SUBNAME)X \
                 $(CONFIG_PK_LIBXDMCP_CONFIG)X \
                 $(CONFIG_PK_LIBXDMCP_LIBPATH)X \
                 $(CONFIG_PK_LIBXDMCP_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXDMCP_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXDMCP_CFLAGS)X \
                 $(CONFIG_PK_LIBXDMCP_LDFLAGS)X \
                 $(CONFIG_PK_LIBXDMCP_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXDMCP_ASFLAGS)X \
                 $(PK_LIBXDMCP_BSBIT)X \
                 $(PK_LIBXDMCP_BUILDARCH)X

$(PK_LIBXDMCP_DIR)/build: FORCE
	$(Q)$(call PK_LIBXDMCP_sh,$(srctree))

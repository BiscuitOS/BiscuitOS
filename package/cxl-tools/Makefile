################################################
#
# cxl-tools
#
################################################
PK_CXL_TOOLS_NAME        := cxl-tools
PK_CXL_TOOLS_VERSION     := $(CONFIG_PK_CXL_TOOLS_VERSION)
PK_CXL_TOOLS_SITE        := $(CONFIG_PK_CXL_TOOLS_URL)
PK_CXL_TOOLS_GITHUB      := $(CONFIG_PK_CXL_TOOLS_GITHUB)
PK_CXL_TOOLS_SUBNAME     :=
PK_CXL_TOOLS_BUILDARCH   := $(CONFIG_PK_CXL_TOOLS_BUILDARCH)
PK_CXL_TOOLS_DIR         := $(srctree)/package/cxl-tools
PK_CXL_TOOLS_PATCH       := $(PK_CXL_TOOLS_DIR)/patch
PK_CXL_TOOLS_BSBIT       := cxl-tools-$(PK_CXL_TOOLS_VERSION).bsbit
PK_CXL_TOOLS_OUT         :=
PK_CXL_TOOLS_SCRIPTS     := $(srctree)/scripts/package/package-cxl-tools.sh
PK_CXL_TOOLS_TAR         := $(CONFIG_PK_CXL_TOOLS_TAR)
PK_CXL_TOOLS_PACKAGE     :=
PK_CXL_TOOLS_CONFIG      := $(CONFIG_PK_CXL_TOOLS_CONFIG)
SUB_TARGET            += $(PK_CXL_TOOLS_DIR)/build

PK_CXL_TOOLS_sh = $(CONFIG_SHELL) $(PK_CXL_TOOLS_SCRIPTS) \
                 $1X \
                 $(PK_CXL_TOOLS_NAME)X \
                 $(PK_CXL_TOOLS_VERSION)X \
                 $(PK_CXL_TOOLS_SITE)X \
                 $(PK_CXL_TOOLS_GITHUB)X \
                 $(PK_CXL_TOOLS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CXL_TOOLS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CXL_TOOLS_SUBNAME)X \
                 $(CONFIG_PK_CXL_TOOLS_CONFIG)X \
                 $(CONFIG_PK_CXL_TOOLS_LIBPATH)X \
                 $(CONFIG_PK_CXL_TOOLS_CPPFLAGS)X \
                 $(CONFIG_PK_CXL_TOOLS_DPKCONFIG)X \
                 $(CONFIG_PK_CXL_TOOLS_CFLAGS)X \
                 $(CONFIG_PK_CXL_TOOLS_LDFLAGS)X \
                 $(CONFIG_PK_CXL_TOOLS_CXXFLAGS)X \
                 $(CONFIG_PK_CXL_TOOLS_ASFLAGS)X \
                 $(PK_CXL_TOOLS_BSBIT)X \
                 $(PK_CXL_TOOLS_BUILDARCH)X

$(PK_CXL_TOOLS_DIR)/build: FORCE
	$(Q)$(call PK_CXL_TOOLS_sh,$(srctree))

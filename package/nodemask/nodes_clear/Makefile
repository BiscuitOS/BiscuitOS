################################################
#
# nodes_clear
#
################################################
PK_NODES_CLEAR_NAME        := nodes_clear
PK_NODES_CLEAR_VERSION     := $(CONFIG_PK_NODES_CLEAR_VERSION)
PK_NODES_CLEAR_SITE        := $(CONFIG_PK_NODES_CLEAR_URL)
PK_NODES_CLEAR_GITHUB      := $(CONFIG_PK_NODES_CLEAR_GITHUB)
PK_NODES_CLEAR_SUBNAME     :=
PK_NODES_CLEAR_BUILDARCH   := $(CONFIG_PK_NODES_CLEAR_BUILDARCH)
PK_NODES_CLEAR_DIR         := $(srctree)/package/nodemask/nodes_clear
PK_NODES_CLEAR_PATCH       := $(PK_NODES_CLEAR_DIR)/patch
PK_NODES_CLEAR_BSBIT       := nodes_clear-$(PK_NODES_CLEAR_VERSION).bsbit
PK_NODES_CLEAR_OUT         :=
PK_NODES_CLEAR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_CLEAR_TAR         := $(CONFIG_PK_NODES_CLEAR_TAR)
PK_NODES_CLEAR_PACKAGE     :=
PK_NODES_CLEAR_CONFIG      := $(CONFIG_PK_NODES_CLEAR_CONFIG)
SUB_TARGET                  += $(PK_NODES_CLEAR_DIR)/build

PK_NODES_CLEAR_sh = $(CONFIG_SHELL) $(PK_NODES_CLEAR_SCRIPTS) \
                 $1X \
                 $(PK_NODES_CLEAR_NAME)X \
                 $(PK_NODES_CLEAR_VERSION)X \
                 $(PK_NODES_CLEAR_SITE)X \
                 $(PK_NODES_CLEAR_GITHUB)X \
                 $(PK_NODES_CLEAR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_CLEAR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_CLEAR_SUBNAME)X \
                 $(CONFIG_PK_NODES_CLEAR_CONFIG)X \
                 $(CONFIG_PK_NODES_CLEAR_LIBPATH)X \
                 $(CONFIG_PK_NODES_CLEAR_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_CLEAR_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_CLEAR_CFLAGS)X \
                 $(CONFIG_PK_NODES_CLEAR_LDFLAGS)X \
                 $(CONFIG_PK_NODES_CLEAR_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_CLEAR_ASFLAGS)X \
                 $(PK_NODES_CLEAR_BSBIT)X \
                 $(PK_NODES_CLEAR_BUILDARCH)X \
		 $(PK_NODES_CLEAR_CSRCFILE)X \
                 $(CONFIG_PK_NODES_CLEAR_SRCFILE)X \
                 $(CONFIG_PK_NODES_CLEAR_CSRCFILE)

$(PK_NODES_CLEAR_DIR)/build: FORCE
	$(Q)$(call PK_NODES_CLEAR_sh,$(srctree))

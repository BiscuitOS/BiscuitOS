################################################
#
# nodes_or
#
################################################
PK_NODES_OR_NAME        := nodes_or
PK_NODES_OR_VERSION     := $(CONFIG_PK_NODES_OR_VERSION)
PK_NODES_OR_SITE        := $(CONFIG_PK_NODES_OR_URL)
PK_NODES_OR_GITHUB      := $(CONFIG_PK_NODES_OR_GITHUB)
PK_NODES_OR_SUBNAME     :=
PK_NODES_OR_BUILDARCH   := $(CONFIG_PK_NODES_OR_BUILDARCH)
PK_NODES_OR_DIR         := $(srctree)/package/nodemask/nodes_or
PK_NODES_OR_PATCH       := $(PK_NODES_OR_DIR)/patch
PK_NODES_OR_BSBIT       := nodes_or-$(PK_NODES_OR_VERSION).bsbit
PK_NODES_OR_OUT         :=
PK_NODES_OR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_OR_TAR         := $(CONFIG_PK_NODES_OR_TAR)
PK_NODES_OR_PACKAGE     :=
PK_NODES_OR_CONFIG      := $(CONFIG_PK_NODES_OR_CONFIG)
SUB_TARGET                  += $(PK_NODES_OR_DIR)/build

PK_NODES_OR_sh = $(CONFIG_SHELL) $(PK_NODES_OR_SCRIPTS) \
                 $1X \
                 $(PK_NODES_OR_NAME)X \
                 $(PK_NODES_OR_VERSION)X \
                 $(PK_NODES_OR_SITE)X \
                 $(PK_NODES_OR_GITHUB)X \
                 $(PK_NODES_OR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_OR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_OR_SUBNAME)X \
                 $(CONFIG_PK_NODES_OR_CONFIG)X \
                 $(CONFIG_PK_NODES_OR_LIBPATH)X \
                 $(CONFIG_PK_NODES_OR_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_OR_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_OR_CFLAGS)X \
                 $(CONFIG_PK_NODES_OR_LDFLAGS)X \
                 $(CONFIG_PK_NODES_OR_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_OR_ASFLAGS)X \
                 $(PK_NODES_OR_BSBIT)X \
                 $(PK_NODES_OR_BUILDARCH)X \
		 $(PK_NODES_OR_CSRCFILE)X \
                 $(CONFIG_PK_NODES_OR_SRCFILE)X \
                 $(CONFIG_PK_NODES_OR_CSRCFILE)

$(PK_NODES_OR_DIR)/build: FORCE
	$(Q)$(call PK_NODES_OR_sh,$(srctree))

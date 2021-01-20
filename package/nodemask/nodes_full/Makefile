################################################
#
# nodes_full
#
################################################
PK_NODES_FULL_NAME        := nodes_full
PK_NODES_FULL_VERSION     := $(CONFIG_PK_NODES_FULL_VERSION)
PK_NODES_FULL_SITE        := $(CONFIG_PK_NODES_FULL_URL)
PK_NODES_FULL_GITHUB      := $(CONFIG_PK_NODES_FULL_GITHUB)
PK_NODES_FULL_SUBNAME     :=
PK_NODES_FULL_BUILDARCH   := $(CONFIG_PK_NODES_FULL_BUILDARCH)
PK_NODES_FULL_DIR         := $(srctree)/package/nodemask/nodes_full
PK_NODES_FULL_PATCH       := $(PK_NODES_FULL_DIR)/patch
PK_NODES_FULL_BSBIT       := nodes_full-$(PK_NODES_FULL_VERSION).bsbit
PK_NODES_FULL_OUT         :=
PK_NODES_FULL_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_FULL_TAR         := $(CONFIG_PK_NODES_FULL_TAR)
PK_NODES_FULL_PACKAGE     :=
PK_NODES_FULL_CONFIG      := $(CONFIG_PK_NODES_FULL_CONFIG)
SUB_TARGET                  += $(PK_NODES_FULL_DIR)/build

PK_NODES_FULL_sh = $(CONFIG_SHELL) $(PK_NODES_FULL_SCRIPTS) \
                 $1X \
                 $(PK_NODES_FULL_NAME)X \
                 $(PK_NODES_FULL_VERSION)X \
                 $(PK_NODES_FULL_SITE)X \
                 $(PK_NODES_FULL_GITHUB)X \
                 $(PK_NODES_FULL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_FULL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_FULL_SUBNAME)X \
                 $(CONFIG_PK_NODES_FULL_CONFIG)X \
                 $(CONFIG_PK_NODES_FULL_LIBPATH)X \
                 $(CONFIG_PK_NODES_FULL_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_FULL_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_FULL_CFLAGS)X \
                 $(CONFIG_PK_NODES_FULL_LDFLAGS)X \
                 $(CONFIG_PK_NODES_FULL_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_FULL_ASFLAGS)X \
                 $(PK_NODES_FULL_BSBIT)X \
                 $(PK_NODES_FULL_BUILDARCH)X \
		 $(PK_NODES_FULL_CSRCFILE)X \
                 $(CONFIG_PK_NODES_FULL_SRCFILE)X \
                 $(CONFIG_PK_NODES_FULL_CSRCFILE)

$(PK_NODES_FULL_DIR)/build: FORCE
	$(Q)$(call PK_NODES_FULL_sh,$(srctree))

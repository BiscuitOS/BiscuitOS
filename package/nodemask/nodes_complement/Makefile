################################################
#
# nodes_complement
#
################################################
PK_NODES_COMPLEMENT_NAME        := nodes_complement
PK_NODES_COMPLEMENT_VERSION     := $(CONFIG_PK_NODES_COMPLEMENT_VERSION)
PK_NODES_COMPLEMENT_SITE        := $(CONFIG_PK_NODES_COMPLEMENT_URL)
PK_NODES_COMPLEMENT_GITHUB      := $(CONFIG_PK_NODES_COMPLEMENT_GITHUB)
PK_NODES_COMPLEMENT_SUBNAME     :=
PK_NODES_COMPLEMENT_BUILDARCH   := $(CONFIG_PK_NODES_COMPLEMENT_BUILDARCH)
PK_NODES_COMPLEMENT_DIR         := $(srctree)/package/nodemask/nodes_complement
PK_NODES_COMPLEMENT_PATCH       := $(PK_NODES_COMPLEMENT_DIR)/patch
PK_NODES_COMPLEMENT_BSBIT       := nodes_complement-$(PK_NODES_COMPLEMENT_VERSION).bsbit
PK_NODES_COMPLEMENT_OUT         :=
PK_NODES_COMPLEMENT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_COMPLEMENT_TAR         := $(CONFIG_PK_NODES_COMPLEMENT_TAR)
PK_NODES_COMPLEMENT_PACKAGE     :=
PK_NODES_COMPLEMENT_CONFIG      := $(CONFIG_PK_NODES_COMPLEMENT_CONFIG)
SUB_TARGET                  += $(PK_NODES_COMPLEMENT_DIR)/build

PK_NODES_COMPLEMENT_sh = $(CONFIG_SHELL) $(PK_NODES_COMPLEMENT_SCRIPTS) \
                 $1X \
                 $(PK_NODES_COMPLEMENT_NAME)X \
                 $(PK_NODES_COMPLEMENT_VERSION)X \
                 $(PK_NODES_COMPLEMENT_SITE)X \
                 $(PK_NODES_COMPLEMENT_GITHUB)X \
                 $(PK_NODES_COMPLEMENT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_COMPLEMENT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_COMPLEMENT_SUBNAME)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_CONFIG)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_LIBPATH)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_CFLAGS)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_LDFLAGS)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_ASFLAGS)X \
                 $(PK_NODES_COMPLEMENT_BSBIT)X \
                 $(PK_NODES_COMPLEMENT_BUILDARCH)X \
		 $(PK_NODES_COMPLEMENT_CSRCFILE)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_SRCFILE)X \
                 $(CONFIG_PK_NODES_COMPLEMENT_CSRCFILE)

$(PK_NODES_COMPLEMENT_DIR)/build: FORCE
	$(Q)$(call PK_NODES_COMPLEMENT_sh,$(srctree))

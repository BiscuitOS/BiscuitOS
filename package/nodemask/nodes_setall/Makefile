################################################
#
# nodes_setall
#
################################################
PK_NODES_SETALL_NAME        := nodes_setall
PK_NODES_SETALL_VERSION     := $(CONFIG_PK_NODES_SETALL_VERSION)
PK_NODES_SETALL_SITE        := $(CONFIG_PK_NODES_SETALL_URL)
PK_NODES_SETALL_GITHUB      := $(CONFIG_PK_NODES_SETALL_GITHUB)
PK_NODES_SETALL_SUBNAME     :=
PK_NODES_SETALL_BUILDARCH   := $(CONFIG_PK_NODES_SETALL_BUILDARCH)
PK_NODES_SETALL_DIR         := $(srctree)/package/nodemask/nodes_setall
PK_NODES_SETALL_PATCH       := $(PK_NODES_SETALL_DIR)/patch
PK_NODES_SETALL_BSBIT       := nodes_setall-$(PK_NODES_SETALL_VERSION).bsbit
PK_NODES_SETALL_OUT         :=
PK_NODES_SETALL_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_SETALL_TAR         := $(CONFIG_PK_NODES_SETALL_TAR)
PK_NODES_SETALL_PACKAGE     :=
PK_NODES_SETALL_CONFIG      := $(CONFIG_PK_NODES_SETALL_CONFIG)
SUB_TARGET                  += $(PK_NODES_SETALL_DIR)/build

PK_NODES_SETALL_sh = $(CONFIG_SHELL) $(PK_NODES_SETALL_SCRIPTS) \
                 $1X \
                 $(PK_NODES_SETALL_NAME)X \
                 $(PK_NODES_SETALL_VERSION)X \
                 $(PK_NODES_SETALL_SITE)X \
                 $(PK_NODES_SETALL_GITHUB)X \
                 $(PK_NODES_SETALL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_SETALL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_SETALL_SUBNAME)X \
                 $(CONFIG_PK_NODES_SETALL_CONFIG)X \
                 $(CONFIG_PK_NODES_SETALL_LIBPATH)X \
                 $(CONFIG_PK_NODES_SETALL_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_SETALL_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_SETALL_CFLAGS)X \
                 $(CONFIG_PK_NODES_SETALL_LDFLAGS)X \
                 $(CONFIG_PK_NODES_SETALL_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_SETALL_ASFLAGS)X \
                 $(PK_NODES_SETALL_BSBIT)X \
                 $(PK_NODES_SETALL_BUILDARCH)X \
		 $(PK_NODES_SETALL_CSRCFILE)X \
                 $(CONFIG_PK_NODES_SETALL_SRCFILE)X \
                 $(CONFIG_PK_NODES_SETALL_CSRCFILE)

$(PK_NODES_SETALL_DIR)/build: FORCE
	$(Q)$(call PK_NODES_SETALL_sh,$(srctree))

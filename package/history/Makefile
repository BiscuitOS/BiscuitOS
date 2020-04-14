################################################
#
# history
#
################################################
PK_HISTORY_MOD_NAME        := history
PK_HISTORY_MOD_VERSION     := $(CONFIG_PK_HISTORY_MOD_VERSION)
PK_HISTORY_MOD_SITE        := $(CONFIG_PK_HISTORY_MOD_URL)
PK_HISTORY_MOD_GITHUB      := $(CONFIG_PK_HISTORY_MOD_GITHUB)
PK_HISTORY_MOD_SUBNAME     :=
PK_HISTORY_MOD_BUILDARCH   := $(CONFIG_PK_HISTORY_MOD_BUILDARCH)
PK_HISTORY_MOD_DIR         := $(srctree)/package/history
PK_HISTORY_MOD_PATCH       := $(PK_HISTORY_MOD_DIR)/patch
PK_HISTORY_MOD_BSBIT       := history-$(PK_HISTORY_MOD_VERSION).bsbit
PK_HISTORY_MOD_OUT         :=
PK_HISTORY_MOD_SCRIPTS     := $(srctree)/scripts/package/history.sh
PK_HISTORY_MOD_TAR         := $(CONFIG_PK_HISTORY_MOD_TAR)
PK_HISTORY_MOD_PACKAGE     :=
PK_HISTORY_MOD_CONFIG      := $(CONFIG_PK_HISTORY_MOD_CONFIG)
SUB_TARGET                  += $(PK_HISTORY_MOD_DIR)/build

PK_HISTORY_MOD_sh = $(CONFIG_SHELL) $(PK_HISTORY_MOD_SCRIPTS) \
                 $1X \
                 $(PK_HISTORY_MOD_NAME)X \
                 $(PK_HISTORY_MOD_VERSION)X \
                 $(PK_HISTORY_MOD_SITE)X \
                 $(PK_HISTORY_MOD_GITHUB)X \
                 $(PK_HISTORY_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HISTORY_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HISTORY_MOD_SUBNAME)X \
                 $(CONFIG_PK_HISTORY_MOD_CONFIG)X \
                 $(CONFIG_PK_HISTORY_MOD_LIBPATH)X \
                 $(CONFIG_PK_HISTORY_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_HISTORY_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_HISTORY_MOD_CFLAGS)X \
                 $(CONFIG_PK_HISTORY_MOD_LDFLAGS)X \
                 $(CONFIG_PK_HISTORY_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_HISTORY_MOD_ASFLAGS)X \
                 $(PK_HISTORY_MOD_BSBIT)X \
                 $(PK_HISTORY_MOD_BUILDARCH)X \
		 $(PK_HISTORY_MOD_CSRCFILE)X \
                 $(CONFIG_PK_HISTORY_MOD_SRCFILE)X \
                 $(CONFIG_PK_HISTORY_MOD_CSRCFILE)X \
                 $(CONFIG_PK_HISTORY_SRC_DIR)X \
                 $(CONFIG_PK_HISTORY_DEST_DIR)X \
                 $(CONFIG_PK_HISTORY_KERNEL_TAG)X \
                 $(CONFIG_PK_HISTORY_BUILD_NEW)X

$(PK_HISTORY_MOD_DIR)/build: FORCE
	$(Q)$(call PK_HISTORY_MOD_sh,$(srctree))

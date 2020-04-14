################################################
#
# 9p_bs
#
################################################
PK_9P_BS_NAME        := 9p_bs
PK_9P_BS_VERSION     := $(CONFIG_PK_9P_BS_VERSION)
PK_9P_BS_SITE        := $(CONFIG_PK_9P_BS_URL)
PK_9P_BS_GITHUB      := $(CONFIG_PK_9P_BS_GITHUB)
PK_9P_BS_SUBNAME     :=
PK_9P_BS_BUILDARCH   := $(CONFIG_PK_9P_BS_BUILDARCH)
PK_9P_BS_DIR         := $(srctree)/package/filesystem/9p/9p_bs
PK_9P_BS_PATCH       := $(PK_9P_BS_DIR)/patch
PK_9P_BS_BSBIT       := 9p_bs-$(PK_9P_BS_VERSION).bsbit
PK_9P_BS_OUT         :=
PK_9P_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_9P_BS_TAR         := $(CONFIG_PK_9P_BS_TAR)
PK_9P_BS_PACKAGE     :=
PK_9P_BS_CONFIG      := $(CONFIG_PK_9P_BS_CONFIG)
SUB_TARGET                  += $(PK_9P_BS_DIR)/build

PK_9P_BS_sh = $(CONFIG_SHELL) $(PK_9P_BS_SCRIPTS) \
                 $1X \
                 $(PK_9P_BS_NAME)X \
                 $(PK_9P_BS_VERSION)X \
                 $(PK_9P_BS_SITE)X \
                 $(PK_9P_BS_GITHUB)X \
                 $(PK_9P_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_9P_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_9P_BS_SUBNAME)X \
                 $(CONFIG_PK_9P_BS_CONFIG)X \
                 $(CONFIG_PK_9P_BS_LIBPATH)X \
                 $(CONFIG_PK_9P_BS_CPPFLAGS)X \
                 $(CONFIG_PK_9P_BS_DPKCONFIG)X \
                 $(CONFIG_PK_9P_BS_CFLAGS)X \
                 $(CONFIG_PK_9P_BS_LDFLAGS)X \
                 $(CONFIG_PK_9P_BS_CXXFLAGS)X \
                 $(CONFIG_PK_9P_BS_ASFLAGS)X \
                 $(PK_9P_BS_BSBIT)X \
                 $(PK_9P_BS_BUILDARCH)X \
		 $(PK_9P_BS_CSRCFILE)X \
                 $(CONFIG_PK_9P_BS_SRCFILE)X \
                 $(CONFIG_PK_9P_BS_CSRCFILE)

$(PK_9P_BS_DIR)/build: FORCE
	$(Q)$(call PK_9P_BS_sh,$(srctree))

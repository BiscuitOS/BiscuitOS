################################################
#
# proc_bs
#
################################################
PK_PROC_BS_NAME        := proc_bs
PK_PROC_BS_VERSION     := $(CONFIG_PK_PROC_BS_VERSION)
PK_PROC_BS_SITE        := $(CONFIG_PK_PROC_BS_URL)
PK_PROC_BS_GITHUB      := $(CONFIG_PK_PROC_BS_GITHUB)
PK_PROC_BS_SUBNAME     :=
PK_PROC_BS_BUILDARCH   := $(CONFIG_PK_PROC_BS_BUILDARCH)
PK_PROC_BS_DIR         := $(srctree)/package/filesystem/proc/proc_bs
PK_PROC_BS_PATCH       := $(PK_PROC_BS_DIR)/patch
PK_PROC_BS_BSBIT       := proc_bs-$(PK_PROC_BS_VERSION).bsbit
PK_PROC_BS_OUT         :=
PK_PROC_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PROC_BS_TAR         := $(CONFIG_PK_PROC_BS_TAR)
PK_PROC_BS_PACKAGE     :=
PK_PROC_BS_CONFIG      := $(CONFIG_PK_PROC_BS_CONFIG)
SUB_TARGET                  += $(PK_PROC_BS_DIR)/build

PK_PROC_BS_sh = $(CONFIG_SHELL) $(PK_PROC_BS_SCRIPTS) \
                 $1X \
                 $(PK_PROC_BS_NAME)X \
                 $(PK_PROC_BS_VERSION)X \
                 $(PK_PROC_BS_SITE)X \
                 $(PK_PROC_BS_GITHUB)X \
                 $(PK_PROC_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PROC_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PROC_BS_SUBNAME)X \
                 $(CONFIG_PK_PROC_BS_CONFIG)X \
                 $(CONFIG_PK_PROC_BS_LIBPATH)X \
                 $(CONFIG_PK_PROC_BS_CPPFLAGS)X \
                 $(CONFIG_PK_PROC_BS_DPKCONFIG)X \
                 $(CONFIG_PK_PROC_BS_CFLAGS)X \
                 $(CONFIG_PK_PROC_BS_LDFLAGS)X \
                 $(CONFIG_PK_PROC_BS_CXXFLAGS)X \
                 $(CONFIG_PK_PROC_BS_ASFLAGS)X \
                 $(PK_PROC_BS_BSBIT)X \
                 $(PK_PROC_BS_BUILDARCH)X \
		 $(PK_PROC_BS_CSRCFILE)X \
                 $(CONFIG_PK_PROC_BS_SRCFILE)X \
                 $(CONFIG_PK_PROC_BS_CSRCFILE)

$(PK_PROC_BS_DIR)/build: FORCE
	$(Q)$(call PK_PROC_BS_sh,$(srctree))

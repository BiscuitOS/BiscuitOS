################################################
#
# minix_bs
#
################################################
PK_MINIX_BS_NAME        := minix_bs
PK_MINIX_BS_VERSION     := $(CONFIG_PK_MINIX_BS_VERSION)
PK_MINIX_BS_SITE        := $(CONFIG_PK_MINIX_BS_URL)
PK_MINIX_BS_GITHUB      := $(CONFIG_PK_MINIX_BS_GITHUB)
PK_MINIX_BS_SUBNAME     :=
PK_MINIX_BS_BUILDARCH   := $(CONFIG_PK_MINIX_BS_BUILDARCH)
PK_MINIX_BS_DIR         := $(srctree)/package/filesystem/minix/minix_bs
PK_MINIX_BS_PATCH       := $(PK_MINIX_BS_DIR)/patch
PK_MINIX_BS_BSBIT       := minix_bs-$(PK_MINIX_BS_VERSION).bsbit
PK_MINIX_BS_OUT         :=
PK_MINIX_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MINIX_BS_TAR         := $(CONFIG_PK_MINIX_BS_TAR)
PK_MINIX_BS_PACKAGE     :=
PK_MINIX_BS_CONFIG      := $(CONFIG_PK_MINIX_BS_CONFIG)
SUB_TARGET                  += $(PK_MINIX_BS_DIR)/build

PK_MINIX_BS_sh = $(CONFIG_SHELL) $(PK_MINIX_BS_SCRIPTS) \
                 $1X \
                 $(PK_MINIX_BS_NAME)X \
                 $(PK_MINIX_BS_VERSION)X \
                 $(PK_MINIX_BS_SITE)X \
                 $(PK_MINIX_BS_GITHUB)X \
                 $(PK_MINIX_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MINIX_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MINIX_BS_SUBNAME)X \
                 $(CONFIG_PK_MINIX_BS_CONFIG)X \
                 $(CONFIG_PK_MINIX_BS_LIBPATH)X \
                 $(CONFIG_PK_MINIX_BS_CPPFLAGS)X \
                 $(CONFIG_PK_MINIX_BS_DPKCONFIG)X \
                 $(CONFIG_PK_MINIX_BS_CFLAGS)X \
                 $(CONFIG_PK_MINIX_BS_LDFLAGS)X \
                 $(CONFIG_PK_MINIX_BS_CXXFLAGS)X \
                 $(CONFIG_PK_MINIX_BS_ASFLAGS)X \
                 $(PK_MINIX_BS_BSBIT)X \
                 $(PK_MINIX_BS_BUILDARCH)X \
		 $(PK_MINIX_BS_CSRCFILE)X \
                 $(CONFIG_PK_MINIX_BS_SRCFILE)X \
                 $(CONFIG_PK_MINIX_BS_CSRCFILE)

$(PK_MINIX_BS_DIR)/build: FORCE
	$(Q)$(call PK_MINIX_BS_sh,$(srctree))

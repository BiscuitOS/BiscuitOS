################################################
#
# bdev_bs
#
################################################
PK_BDEV_BS_NAME        := bdev_bs
PK_BDEV_BS_VERSION     := $(CONFIG_PK_BDEV_BS_VERSION)
PK_BDEV_BS_SITE        := $(CONFIG_PK_BDEV_BS_URL)
PK_BDEV_BS_GITHUB      := $(CONFIG_PK_BDEV_BS_GITHUB)
PK_BDEV_BS_SUBNAME     :=
PK_BDEV_BS_BUILDARCH   := $(CONFIG_PK_BDEV_BS_BUILDARCH)
PK_BDEV_BS_DIR         := $(srctree)/package/filesystem/bdev/bdev_bs
PK_BDEV_BS_PATCH       := $(PK_BDEV_BS_DIR)/patch
PK_BDEV_BS_BSBIT       := bdev_bs-$(PK_BDEV_BS_VERSION).bsbit
PK_BDEV_BS_OUT         :=
PK_BDEV_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BDEV_BS_TAR         := $(CONFIG_PK_BDEV_BS_TAR)
PK_BDEV_BS_PACKAGE     :=
PK_BDEV_BS_CONFIG      := $(CONFIG_PK_BDEV_BS_CONFIG)
SUB_TARGET                  += $(PK_BDEV_BS_DIR)/build

PK_BDEV_BS_sh = $(CONFIG_SHELL) $(PK_BDEV_BS_SCRIPTS) \
                 $1X \
                 $(PK_BDEV_BS_NAME)X \
                 $(PK_BDEV_BS_VERSION)X \
                 $(PK_BDEV_BS_SITE)X \
                 $(PK_BDEV_BS_GITHUB)X \
                 $(PK_BDEV_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BDEV_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BDEV_BS_SUBNAME)X \
                 $(CONFIG_PK_BDEV_BS_CONFIG)X \
                 $(CONFIG_PK_BDEV_BS_LIBPATH)X \
                 $(CONFIG_PK_BDEV_BS_CPPFLAGS)X \
                 $(CONFIG_PK_BDEV_BS_DPKCONFIG)X \
                 $(CONFIG_PK_BDEV_BS_CFLAGS)X \
                 $(CONFIG_PK_BDEV_BS_LDFLAGS)X \
                 $(CONFIG_PK_BDEV_BS_CXXFLAGS)X \
                 $(CONFIG_PK_BDEV_BS_ASFLAGS)X \
                 $(PK_BDEV_BS_BSBIT)X \
                 $(PK_BDEV_BS_BUILDARCH)X \
		 $(PK_BDEV_BS_CSRCFILE)X \
                 $(CONFIG_PK_BDEV_BS_SRCFILE)X \
                 $(CONFIG_PK_BDEV_BS_CSRCFILE)

$(PK_BDEV_BS_DIR)/build: FORCE
	$(Q)$(call PK_BDEV_BS_sh,$(srctree))

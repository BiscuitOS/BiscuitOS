################################################
#
# riscv-pk
#
################################################
PK_RISCV_PK_NAME        := riscv-pk
PK_RISCV_PK_VERSION     := $(CONFIG_PK_RISCV_PK_VERSION)
PK_RISCV_PK_SITE        := $(CONFIG_PK_RISCV_PK_URL)
PK_RISCV_PK_GITHUB      := $(CONFIG_PK_RISCV_PK_GITHUB)
PK_RISCV_PK_SUBNAME     :=
PK_RISCV_PK_BUILDARCH   := $(CONFIG_PK_RISCV_PK_BUILDARCH)
PK_RISCV_PK_DIR         := $(srctree)/package/riscv-pk
PK_RISCV_PK_PATCH       := $(PK_RISCV_PK_DIR)/patch
PK_RISCV_PK_BSBIT       := riscv-pk-$(PK_RISCV_PK_VERSION).bsbit
PK_RISCV_PK_OUT         :=
PK_RISCV_PK_SCRIPTS     := $(srctree)/scripts/package/package-riscv.sh
PK_RISCV_PK_TAR         := $(CONFIG_PK_RISCV_PK_TAR)
PK_RISCV_PK_PACKAGE     :=
PK_RISCV_PK_CONFIG      := $(CONFIG_PK_RISCV_PK_CONFIG)
SUB_TARGET              += $(PK_RISCV_PK_DIR)/build

PK_RISCV_PK_sh = $(CONFIG_SHELL) $(PK_RISCV_PK_SCRIPTS) \
                 $1X \
                 $(PK_RISCV_PK_NAME)X \
                 $(PK_RISCV_PK_VERSION)X \
                 $(PK_RISCV_PK_SITE)X \
                 $(PK_RISCV_PK_GITHUB)X \
                 $(PK_RISCV_PK_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_RISCV_PK_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_RISCV_PK_SUBNAME)X \
                 $(CONFIG_PK_RISCV_PK_CONFIG)X \
                 $(CONFIG_PK_RISCV_PK_LIBPATH)X \
                 $(CONFIG_PK_RISCV_PK_CPPFLAGS)X \
                 $(CONFIG_PK_RISCV_PK_DPKCONFIG)X \
                 $(CONFIG_PK_RISCV_PK_CFLAGS)X \
                 $(CONFIG_PK_RISCV_PK_LDFLAGS)X \
                 $(CONFIG_PK_RISCV_PK_CXXFLAGS)X \
                 $(CONFIG_PK_RISCV_PK_ASFLAGS)X \
                 $(PK_RISCV_PK_BSBIT)X \
                 $(PK_RISCV_PK_BUILDARCH)X

$(PK_RISCV_PK_DIR)/build: FORCE
	$(Q)$(call PK_RISCV_PK_sh,$(srctree))

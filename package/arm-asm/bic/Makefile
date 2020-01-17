################################################
#
# bic
#
################################################
PK_ARM_ASM_BIC_NAME        := bic
PK_ARM_ASM_BIC_VERSION     := $(CONFIG_PK_ARM_ASM_BIC_VERSION)
PK_ARM_ASM_BIC_SITE        := $(CONFIG_PK_ARM_ASM_BIC_URL)
PK_ARM_ASM_BIC_GITHUB      := $(CONFIG_PK_ARM_ASM_BIC_GITHUB)
PK_ARM_ASM_BIC_SUBNAME     :=
PK_ARM_ASM_BIC_BUILDARCH   := $(CONFIG_PK_ARM_ASM_BIC_BUILDARCH)
PK_ARM_ASM_BIC_DIR         := $(srctree)/package/arm-asm/bic
PK_ARM_ASM_BIC_PATCH       := $(PK_ARM_ASM_BIC_DIR)/patch
PK_ARM_ASM_BIC_BSBIT       := bic-$(PK_ARM_ASM_BIC_VERSION).bsbit
PK_ARM_ASM_BIC_OUT         :=
PK_ARM_ASM_BIC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_ARM_ASM_BIC_TAR         := $(CONFIG_PK_ARM_ASM_BIC_TAR)
PK_ARM_ASM_BIC_PACKAGE     :=
PK_ARM_ASM_BIC_CONFIG      := $(CONFIG_PK_ARM_ASM_BIC_CONFIG)
SUB_TARGET                  += $(PK_ARM_ASM_BIC_DIR)/build

PK_ARM_ASM_BIC_sh = $(CONFIG_SHELL) $(PK_ARM_ASM_BIC_SCRIPTS) \
                 $1X \
                 $(PK_ARM_ASM_BIC_NAME)X \
                 $(PK_ARM_ASM_BIC_VERSION)X \
                 $(PK_ARM_ASM_BIC_SITE)X \
                 $(PK_ARM_ASM_BIC_GITHUB)X \
                 $(PK_ARM_ASM_BIC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ARM_ASM_BIC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ARM_ASM_BIC_SUBNAME)X \
                 $(CONFIG_PK_ARM_ASM_BIC_CONFIG)X \
                 $(CONFIG_PK_ARM_ASM_BIC_LIBPATH)X \
                 $(CONFIG_PK_ARM_ASM_BIC_CPPFLAGS)X \
                 $(CONFIG_PK_ARM_ASM_BIC_DPKCONFIG)X \
                 $(CONFIG_PK_ARM_ASM_BIC_CFLAGS)X \
                 $(CONFIG_PK_ARM_ASM_BIC_LDFLAGS)X \
                 $(CONFIG_PK_ARM_ASM_BIC_CXXFLAGS)X \
                 $(CONFIG_PK_ARM_ASM_BIC_ASFLAGS)X \
                 $(PK_ARM_ASM_BIC_BSBIT)X \
                 $(PK_ARM_ASM_BIC_BUILDARCH)X \
		 $(PK_ARM_ASM_BIC_CSRCFILE)X \
                 $(CONFIG_PK_ARM_ASM_BIC_SRCFILE)X \
                 $(CONFIG_PK_ARM_ASM_BIC_CSRCFILE)

$(PK_ARM_ASM_BIC_DIR)/build: FORCE
	$(Q)$(call PK_ARM_ASM_BIC_sh,$(srctree))

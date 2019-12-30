################################################
#
# mov
#
################################################
PK_ARM_ASM_MOV_NAME        := mov
PK_ARM_ASM_MOV_VERSION     := $(CONFIG_PK_ARM_ASM_MOV_VERSION)
PK_ARM_ASM_MOV_SITE        := $(CONFIG_PK_ARM_ASM_MOV_URL)
PK_ARM_ASM_MOV_GITHUB      := $(CONFIG_PK_ARM_ASM_MOV_GITHUB)
PK_ARM_ASM_MOV_SUBNAME     :=
PK_ARM_ASM_MOV_BUILDARCH   := $(CONFIG_PK_ARM_ASM_MOV_BUILDARCH)
PK_ARM_ASM_MOV_DIR         := $(srctree)/package/arm-asm/mov
PK_ARM_ASM_MOV_PATCH       := $(PK_ARM_ASM_MOV_DIR)/patch
PK_ARM_ASM_MOV_BSBIT       := mov-$(PK_ARM_ASM_MOV_VERSION).bsbit
PK_ARM_ASM_MOV_OUT         :=
PK_ARM_ASM_MOV_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_ARM_ASM_MOV_TAR         := $(CONFIG_PK_ARM_ASM_MOV_TAR)
PK_ARM_ASM_MOV_PACKAGE     :=
PK_ARM_ASM_MOV_CONFIG      := $(CONFIG_PK_ARM_ASM_MOV_CONFIG)
SUB_TARGET                  += $(PK_ARM_ASM_MOV_DIR)/build

PK_ARM_ASM_MOV_sh = $(CONFIG_SHELL) $(PK_ARM_ASM_MOV_SCRIPTS) \
                 $1X \
                 $(PK_ARM_ASM_MOV_NAME)X \
                 $(PK_ARM_ASM_MOV_VERSION)X \
                 $(PK_ARM_ASM_MOV_SITE)X \
                 $(PK_ARM_ASM_MOV_GITHUB)X \
                 $(PK_ARM_ASM_MOV_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ARM_ASM_MOV_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ARM_ASM_MOV_SUBNAME)X \
                 $(CONFIG_PK_ARM_ASM_MOV_CONFIG)X \
                 $(CONFIG_PK_ARM_ASM_MOV_LIBPATH)X \
                 $(CONFIG_PK_ARM_ASM_MOV_CPPFLAGS)X \
                 $(CONFIG_PK_ARM_ASM_MOV_DPKCONFIG)X \
                 $(CONFIG_PK_ARM_ASM_MOV_CFLAGS)X \
                 $(CONFIG_PK_ARM_ASM_MOV_LDFLAGS)X \
                 $(CONFIG_PK_ARM_ASM_MOV_CXXFLAGS)X \
                 $(CONFIG_PK_ARM_ASM_MOV_ASFLAGS)X \
                 $(PK_ARM_ASM_MOV_BSBIT)X \
                 $(PK_ARM_ASM_MOV_BUILDARCH)X \
		 $(PK_ARM_ASM_MOV_CSRCFILE)X \
                 $(CONFIG_PK_ARM_ASM_MOV_SRCFILE)X \
                 $(CONFIG_PK_ARM_ASM_MOV_CSRCFILE)

$(PK_ARM_ASM_MOV_DIR)/build: FORCE
	$(Q)$(call PK_ARM_ASM_MOV_sh,$(srctree))

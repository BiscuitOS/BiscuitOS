################################################
#
# demo
#
################################################
PK_INLINE_ASM_DEMO_NAME        := demo-inline
PK_INLINE_ASM_DEMO_VERSION     := $(CONFIG_PK_INLINE_ASM_DEMO_VERSION)
PK_INLINE_ASM_DEMO_SITE        := $(CONFIG_PK_INLINE_ASM_DEMO_URL)
PK_INLINE_ASM_DEMO_GITHUB      := $(CONFIG_PK_INLINE_ASM_DEMO_GITHUB)
PK_INLINE_ASM_DEMO_SUBNAME     :=
PK_INLINE_ASM_DEMO_BUILDARCH   := $(CONFIG_PK_INLINE_ASM_DEMO_BUILDARCH)
PK_INLINE_ASM_DEMO_DIR         := $(srctree)/package/assembly/inline-asm/demo
PK_INLINE_ASM_DEMO_PATCH       := $(PK_INLINE_ASM_DEMO_DIR)/patch
PK_INLINE_ASM_DEMO_BSBIT       := demo-$(PK_INLINE_ASM_DEMO_VERSION).bsbit
PK_INLINE_ASM_DEMO_OUT         :=
PK_INLINE_ASM_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_INLINE_ASM_DEMO_TAR         := $(CONFIG_PK_INLINE_ASM_DEMO_TAR)
PK_INLINE_ASM_DEMO_PACKAGE     :=
PK_INLINE_ASM_DEMO_CONFIG      := $(CONFIG_PK_INLINE_ASM_DEMO_CONFIG)
SUB_TARGET                  += $(PK_INLINE_ASM_DEMO_DIR)/build

PK_INLINE_ASM_DEMO_sh = $(CONFIG_SHELL) $(PK_INLINE_ASM_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_INLINE_ASM_DEMO_NAME)X \
                 $(PK_INLINE_ASM_DEMO_VERSION)X \
                 $(PK_INLINE_ASM_DEMO_SITE)X \
                 $(PK_INLINE_ASM_DEMO_GITHUB)X \
                 $(PK_INLINE_ASM_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_INLINE_ASM_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_INLINE_ASM_DEMO_SUBNAME)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_CONFIG)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_LIBPATH)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_CFLAGS)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_ASFLAGS)X \
                 $(PK_INLINE_ASM_DEMO_BSBIT)X \
                 $(PK_INLINE_ASM_DEMO_BUILDARCH)X \
		 $(PK_INLINE_ASM_DEMO_CSRCFILE)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_SRCFILE)X \
                 $(CONFIG_PK_INLINE_ASM_DEMO_CSRCFILE)

$(PK_INLINE_ASM_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_INLINE_ASM_DEMO_sh,$(srctree))

################################################
#
# BiscuitOS-C
#
################################################
PK_C_BISCUITOS_NAME        := BiscuitOS-C
PK_C_BISCUITOS_VERSION     := $(CONFIG_PK_C_BISCUITOS_VERSION)
PK_C_BISCUITOS_SITE        := $(CONFIG_PK_C_BISCUITOS_URL)
PK_C_BISCUITOS_GITHUB      := $(CONFIG_PK_C_BISCUITOS_GITHUB)
PK_C_BISCUITOS_SUBNAME     :=
PK_C_BISCUITOS_BUILDARCH   := $(CONFIG_PK_C_BISCUITOS_BUILDARCH)
PK_C_BISCUITOS_DIR         := $(srctree)/package/language/C/BiscuitOS-C
PK_C_BISCUITOS_PATCH       := $(PK_C_BISCUITOS_DIR)/patch
PK_C_BISCUITOS_BSBIT       := BiscuitOS-C-$(PK_C_BISCUITOS_VERSION).bsbit
PK_C_BISCUITOS_OUT         :=
PK_C_BISCUITOS_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_C_BISCUITOS_TAR         := $(CONFIG_PK_C_BISCUITOS_TAR)
PK_C_BISCUITOS_PACKAGE     :=
PK_C_BISCUITOS_CONFIG      := $(CONFIG_PK_C_BISCUITOS_CONFIG)
SUB_TARGET                  += $(PK_C_BISCUITOS_DIR)/build

PK_C_BISCUITOS_sh = $(CONFIG_SHELL) $(PK_C_BISCUITOS_SCRIPTS) \
                 $1X \
                 $(PK_C_BISCUITOS_NAME)X \
                 $(PK_C_BISCUITOS_VERSION)X \
                 $(PK_C_BISCUITOS_SITE)X \
                 $(PK_C_BISCUITOS_GITHUB)X \
                 $(PK_C_BISCUITOS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_C_BISCUITOS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_C_BISCUITOS_SUBNAME)X \
                 $(CONFIG_PK_C_BISCUITOS_CONFIG)X \
                 $(CONFIG_PK_C_BISCUITOS_LIBPATH)X \
                 $(CONFIG_PK_C_BISCUITOS_CPPFLAGS)X \
                 $(CONFIG_PK_C_BISCUITOS_DPKCONFIG)X \
                 $(CONFIG_PK_C_BISCUITOS_CFLAGS)X \
                 $(CONFIG_PK_C_BISCUITOS_LDFLAGS)X \
                 $(CONFIG_PK_C_BISCUITOS_CXXFLAGS)X \
                 $(CONFIG_PK_C_BISCUITOS_ASFLAGS)X \
                 $(PK_C_BISCUITOS_BSBIT)X \
                 $(PK_C_BISCUITOS_BUILDARCH)X \
		 $(PK_C_BISCUITOS_CSRCFILE)X \
                 $(CONFIG_PK_C_BISCUITOS_SRCFILE)X \
                 $(CONFIG_PK_C_BISCUITOS_CSRCFILE)

$(PK_C_BISCUITOS_DIR)/build: FORCE
	$(Q)$(call PK_C_BISCUITOS_sh,$(srctree))

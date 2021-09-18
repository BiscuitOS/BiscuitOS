################################################
#
# BiscuitOS-CPP
#
################################################
PK_CPP_BISCUITOS_NAME        := BiscuitOS-CPP
PK_CPP_BISCUITOS_VERSION     := $(CONFIG_PK_CPP_BISCUITOS_VERSION)
PK_CPP_BISCUITOS_SITE        := $(CONFIG_PK_CPP_BISCUITOS_URL)
PK_CPP_BISCUITOS_GITHUB      := $(CONFIG_PK_CPP_BISCUITOS_GITHUB)
PK_CPP_BISCUITOS_SUBNAME     :=
PK_CPP_BISCUITOS_BUILDARCH   := $(CONFIG_PK_CPP_BISCUITOS_BUILDARCH)
PK_CPP_BISCUITOS_DIR         := $(srctree)/package/language/CPP/BiscuitOS-CPP
PK_CPP_BISCUITOS_PATCH       := $(PK_CPP_BISCUITOS_DIR)/patch
PK_CPP_BISCUITOS_BSBIT       := BiscuitOS-CPP-$(PK_CPP_BISCUITOS_VERSION).bsbit
PK_CPP_BISCUITOS_OUT         :=
PK_CPP_BISCUITOS_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_CPP_BISCUITOS_TAR         := $(CONFIG_PK_CPP_BISCUITOS_TAR)
PK_CPP_BISCUITOS_PACKAGE     :=
PK_CPP_BISCUITOS_CONFIG      := $(CONFIG_PK_CPP_BISCUITOS_CONFIG)
SUB_TARGET                  += $(PK_CPP_BISCUITOS_DIR)/build

PK_CPP_BISCUITOS_sh = $(CONFIG_SHELL) $(PK_CPP_BISCUITOS_SCRIPTS) \
                 $1X \
                 $(PK_CPP_BISCUITOS_NAME)X \
                 $(PK_CPP_BISCUITOS_VERSION)X \
                 $(PK_CPP_BISCUITOS_SITE)X \
                 $(PK_CPP_BISCUITOS_GITHUB)X \
                 $(PK_CPP_BISCUITOS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CPP_BISCUITOS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CPP_BISCUITOS_SUBNAME)X \
                 $(CONFIG_PK_CPP_BISCUITOS_CONFIG)X \
                 $(CONFIG_PK_CPP_BISCUITOS_LIBPATH)X \
                 $(CONFIG_PK_CPP_BISCUITOS_CPPFLAGS)X \
                 $(CONFIG_PK_CPP_BISCUITOS_DPKCONFIG)X \
                 $(CONFIG_PK_CPP_BISCUITOS_CFLAGS)X \
                 $(CONFIG_PK_CPP_BISCUITOS_LDFLAGS)X \
                 $(CONFIG_PK_CPP_BISCUITOS_CXXFLAGS)X \
                 $(CONFIG_PK_CPP_BISCUITOS_ASFLAGS)X \
                 $(PK_CPP_BISCUITOS_BSBIT)X \
                 $(PK_CPP_BISCUITOS_BUILDARCH)X \
		 $(PK_CPP_BISCUITOS_CSRCFILE)X \
                 $(CONFIG_PK_CPP_BISCUITOS_SRCFILE)X \
                 $(CONFIG_PK_CPP_BISCUITOS_CSRCFILE)

$(PK_CPP_BISCUITOS_DIR)/build: FORCE
	$(Q)$(call PK_CPP_BISCUITOS_sh,$(srctree))

################################################
#
# BiscuitOS-THP-AnonHugepage
#
################################################
PK_THP_ANONHUGE_NAME        := BiscuitOS-THP-AnonHugepage
PK_THP_ANONHUGE_VERSION     := $(CONFIG_PK_THP_ANONHUGE_VERSION)
PK_THP_ANONHUGE_SITE        := $(CONFIG_PK_THP_ANONHUGE_URL)
PK_THP_ANONHUGE_GITHUB      := $(CONFIG_PK_THP_ANONHUGE_GITHUB)
PK_THP_ANONHUGE_SUBNAME     :=
PK_THP_ANONHUGE_BUILDARCH   := $(CONFIG_PK_THP_ANONHUGE_BUILDARCH)
PK_THP_ANONHUGE_DIR         := $(srctree)/package/THP/BiscuitOS-THP-AnonHugepage
PK_THP_ANONHUGE_PATCH       := $(PK_THP_ANONHUGE_DIR)/patch
PK_THP_ANONHUGE_BSBIT       := BiscuitOS-THP-AnonHugepage-$(PK_THP_ANONHUGE_VERSION).bsbit
PK_THP_ANONHUGE_OUT         :=
PK_THP_ANONHUGE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_THP_ANONHUGE_TAR         := $(CONFIG_PK_THP_ANONHUGE_TAR)
PK_THP_ANONHUGE_PACKAGE     :=
PK_THP_ANONHUGE_CONFIG      := $(CONFIG_PK_THP_ANONHUGE_CONFIG)
SUB_TARGET                  += $(PK_THP_ANONHUGE_DIR)/build

PK_THP_ANONHUGE_sh = $(CONFIG_SHELL) $(PK_THP_ANONHUGE_SCRIPTS) \
                 $1X \
                 $(PK_THP_ANONHUGE_NAME)X \
                 $(PK_THP_ANONHUGE_VERSION)X \
                 $(PK_THP_ANONHUGE_SITE)X \
                 $(PK_THP_ANONHUGE_GITHUB)X \
                 $(PK_THP_ANONHUGE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_THP_ANONHUGE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_THP_ANONHUGE_SUBNAME)X \
                 $(CONFIG_PK_THP_ANONHUGE_CONFIG)X \
                 $(CONFIG_PK_THP_ANONHUGE_LIBPATH)X \
                 $(CONFIG_PK_THP_ANONHUGE_CPPFLAGS)X \
                 $(CONFIG_PK_THP_ANONHUGE_DPKCONFIG)X \
                 $(CONFIG_PK_THP_ANONHUGE_CFLAGS)X \
                 $(CONFIG_PK_THP_ANONHUGE_LDFLAGS)X \
                 $(CONFIG_PK_THP_ANONHUGE_CXXFLAGS)X \
                 $(CONFIG_PK_THP_ANONHUGE_ASFLAGS)X \
                 $(PK_THP_ANONHUGE_BSBIT)X \
                 $(PK_THP_ANONHUGE_BUILDARCH)X \
		 $(PK_THP_ANONHUGE_CSRCFILE)X \
                 $(CONFIG_PK_THP_ANONHUGE_SRCFILE)X \
                 $(CONFIG_PK_THP_ANONHUGE_CSRCFILE)

$(PK_THP_ANONHUGE_DIR)/build: FORCE
	$(Q)$(call PK_THP_ANONHUGE_sh,$(srctree))

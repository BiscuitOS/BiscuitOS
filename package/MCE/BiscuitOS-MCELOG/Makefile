################################################
#
# BiscuitOS-MCELOG
#
################################################
PK_MCE_MCELOG_NAME	:= BiscuitOS-MCELOG
PK_MCE_MCELOG_VERSION	:= $(CONFIG_PK_MCE_MCELOG_VERSION)
PK_MCE_MCELOG_SITE	:= $(CONFIG_PK_MCE_MCELOG_URL)
PK_MCE_MCELOG_GITHUB	:= $(CONFIG_PK_MCE_MCELOG_GITHUB)
PK_MCE_MCELOG_SUBNAME	:=
PK_MCE_MCELOG_BUILDARCH	:= $(CONFIG_PK_MCE_MCELOG_BUILDARCH)
PK_MCE_MCELOG_DIR	:= $(srctree)/package/MCE/BiscuitOS-MCELOG
PK_MCE_MCELOG_PATCH	:= $(PK_MCE_MCELOG_DIR)/patch
PK_MCE_MCELOG_BSBIT	:= BiscuitOS-MCELOG-$(PK_MCE_MCELOG_VERSION).bsbit
PK_MCE_MCELOG_OUT	:=
PK_MCE_MCELOG_SCRIPTS	:= $(srctree)/scripts/package/package-mcelog.sh
PK_MCE_MCELOG_TAR	:= $(CONFIG_PK_MCE_MCELOG_TAR)
PK_MCE_MCELOG_PACKAGE	:=
PK_MCE_MCELOG_CONFIG	:= $(CONFIG_PK_MCE_MCELOG_CONFIG)
SUB_TARGET		+= $(PK_MCE_MCELOG_DIR)/build

PK_MCE_MCELOG_sh = $(CONFIG_SHELL) $(PK_MCE_MCELOG_SCRIPTS) \
                 $1X \
                 $(PK_MCE_MCELOG_NAME)X \
                 $(PK_MCE_MCELOG_VERSION)X \
                 $(PK_MCE_MCELOG_SITE)X \
                 $(PK_MCE_MCELOG_GITHUB)X \
                 $(PK_MCE_MCELOG_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MCE_MCELOG_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MCE_MCELOG_SUBNAME)X \
                 $(CONFIG_PK_MCE_MCELOG_CONFIG)X \
                 $(CONFIG_PK_MCE_MCELOG_LIBPATH)X \
                 $(CONFIG_PK_MCE_MCELOG_CPPFLAGS)X \
                 $(CONFIG_PK_MCE_MCELOG_DPKCONFIG)X \
                 $(CONFIG_PK_MCE_MCELOG_CFLAGS)X \
                 $(CONFIG_PK_MCE_MCELOG_LDFLAGS)X \
                 $(CONFIG_PK_MCE_MCELOG_CXXFLAGS)X \
                 $(CONFIG_PK_MCE_MCELOG_ASFLAGS)X \
                 $(PK_MCE_MCELOG_BSBIT)X \
                 $(PK_MCE_MCELOG_BUILDARCH)X

$(PK_MCE_MCELOG_DIR)/build: FORCE
	$(Q)$(call PK_MCE_MCELOG_sh,$(srctree))

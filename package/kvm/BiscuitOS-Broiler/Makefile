################################################
#
# BiscuitOS-Broiler
#
################################################
PK_BROILER_NAME	:= BiscuitOS-Broiler
PK_BROILER_VERSION	:= $(CONFIG_PK_BROILER_VERSION)
PK_BROILER_SITE	:= $(CONFIG_PK_BROILER_URL)
PK_BROILER_GITHUB	:= $(CONFIG_PK_BROILER_GITHUB)
PK_BROILER_SUBNAME	:=
PK_BROILER_BUILDARCH	:= $(CONFIG_PK_BROILER_BUILDARCH)
PK_BROILER_DIR	:= $(srctree)/package/kvm/BiscuitOS-Broilers
PK_BROILER_PATCH	:= $(PK_BROILER_DIR)/patch
PK_BROILER_BSBIT	:= BiscuitOS-Broiler-$(PK_BROILER_VERSION).bsbit
PK_BROILER_OUT	:=
PK_BROILER_SCRIPTS	:= $(srctree)/scripts/package/package-broiler.sh
PK_BROILER_TAR	:= $(CONFIG_PK_BROILER_TAR)
PK_BROILER_PACKAGE	:=
PK_BROILER_CONFIG	:= $(CONFIG_PK_BROILER_CONFIG)
SUB_TARGET		+= $(PK_BROILER_DIR)/build

PK_BROILER_sh = $(CONFIG_SHELL) $(PK_BROILER_SCRIPTS) \
                 $1X \
                 $(PK_BROILER_NAME)X \
                 $(PK_BROILER_VERSION)X \
                 $(PK_BROILER_SITE)X \
                 $(PK_BROILER_GITHUB)X \
                 $(PK_BROILER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BROILER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BROILER_SUBNAME)X \
                 $(CONFIG_PK_BROILER_CONFIG)X \
                 $(CONFIG_PK_BROILER_LIBPATH)X \
                 $(CONFIG_PK_BROILER_CPPFLAGS)X \
                 $(CONFIG_PK_BROILER_DPKCONFIG)X \
                 $(CONFIG_PK_BROILER_CFLAGS)X \
                 $(CONFIG_PK_BROILER_LDFLAGS)X \
                 $(CONFIG_PK_BROILER_CXXFLAGS)X \
                 $(CONFIG_PK_BROILER_ASFLAGS)X \
                 $(PK_BROILER_BSBIT)X \
                 $(PK_BROILER_BUILDARCH)X

$(PK_BROILER_DIR)/build: FORCE
	$(Q)$(call PK_BROILER_sh,$(srctree))

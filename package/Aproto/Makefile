################################################
#
# BBB
#
################################################
PK_AAAPROTO_NAME        := BBB
PK_AAAPROTO_VERSION     := $(CONFIG_PK_AAAPROTO_VERSION)
PK_AAAPROTO_SITE        := $(CONFIG_PK_AAAPROTO_URL)
PK_AAAPROTO_GITHUB      := $(CONFIG_PK_AAAPROTO_GITHUB)
PK_AAAPROTO_SUBNAME     :=
PK_AAAPROTO_BUILDARCH   := $(CONFIG_PK_AAAPROTO_BUILDARCH)
PK_AAAPROTO_DIR         := $(srctree)/package/BBB
PK_AAAPROTO_PATCH       := $(PK_AAAPROTO_DIR)/patch
PK_AAAPROTO_BSBIT       := BBB-$(PK_AAAPROTO_VERSION).bsbit
PK_AAAPROTO_OUT         :=
PK_AAAPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_AAAPROTO_TAR         := $(CONFIG_PK_AAAPROTO_TAR)
PK_AAAPROTO_PACKAGE     :=
PK_AAAPROTO_CONFIG      := $(CONFIG_PK_AAAPROTO_CONFIG)
SUB_TARGET              += $(PK_AAAPROTO_DIR)/build

PK_AAAPROTO_sh = $(CONFIG_SHELL) $(PK_AAAPROTO_SCRIPTS) \
                 $1X \
                 $(PK_AAAPROTO_NAME)X \
                 $(PK_AAAPROTO_VERSION)X \
                 $(PK_AAAPROTO_SITE)X \
                 $(PK_AAAPROTO_GITHUB)X \
                 $(PK_AAAPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_AAAPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_AAAPROTO_SUBNAME)X \
                 $(CONFIG_PK_AAAPROTO_CONFIG)X \
                 $(CONFIG_PK_AAAPROTO_LIBPATH)X \
                 $(CONFIG_PK_AAAPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_AAAPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_AAAPROTO_CFLAGS)X \
                 $(CONFIG_PK_AAAPROTO_LDFLAGS)X \
                 $(CONFIG_PK_AAAPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_AAAPROTO_ASFLAGS)X \
                 $(PK_AAAPROTO_BSBIT)X \
                 $(PK_AAAPROTO_BUILDARCH)X

$(PK_AAAPROTO_DIR)/build: FORCE
	$(Q)$(call PK_AAAPROTO_sh,$(srctree))

################################################
#
# hello
#
################################################
PK_HELLO_NAME        := hello
PK_HELLO_VERSION     := $(CONFIG_PK_HELLO_VERSION)
PK_HELLO_SITE        := $(CONFIG_PK_HELLO_URL)
PK_HELLO_GITHUB      := $(CONFIG_PK_HELLO_GITHUB)
PK_HELLO_SUBNAME     :=
PK_HELLO_BUILDARCH   := $(CONFIG_PK_HELLO_BUILDARCH)
PK_HELLO_DIR         := $(srctree)/package/hello
PK_HELLO_PATCH       := $(PK_HELLO_DIR)/patch
PK_HELLO_BSBIT       := hello-$(PK_HELLO_VERSION).bsbit
PK_HELLO_OUT         :=
PK_HELLO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_HELLO_TAR         := $(CONFIG_PK_HELLO_TAR)
PK_HELLO_PACKAGE     :=
PK_HELLO_CONFIG      := $(CONFIG_PK_HELLO_CONFIG)
SUB_TARGET              += $(PK_HELLO_DIR)/build

PK_HELLO_sh = $(CONFIG_SHELL) $(PK_HELLO_SCRIPTS) \
                 $1X \
                 $(PK_HELLO_NAME)X \
                 $(PK_HELLO_VERSION)X \
                 $(PK_HELLO_SITE)X \
                 $(PK_HELLO_GITHUB)X \
                 $(PK_HELLO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HELLO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HELLO_SUBNAME)X \
                 $(CONFIG_PK_HELLO_CONFIG)X \
                 $(CONFIG_PK_HELLO_LIBPATH)X \
                 $(CONFIG_PK_HELLO_CPPFLAGS)X \
                 $(CONFIG_PK_HELLO_DPKCONFIG)X \
                 $(CONFIG_PK_HELLO_CFLAGS)X \
                 $(CONFIG_PK_HELLO_LDFLAGS)X \
                 $(CONFIG_PK_HELLO_CXXFLAGS)X \
                 $(CONFIG_PK_HELLO_ASFLAGS)X \
                 $(PK_HELLO_BSBIT)X \
                 $(PK_HELLO_BUILDARCH)X

$(PK_HELLO_DIR)/build: FORCE
	$(Q)$(call PK_HELLO_sh,$(srctree))

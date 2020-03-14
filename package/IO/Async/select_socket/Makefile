################################################
#
# select_socket
#
################################################
PK_SELECT_SOCKET_NAME        := select_socket
PK_SELECT_SOCKET_VERSION     := $(CONFIG_PK_SELECT_SOCKET_VERSION)
PK_SELECT_SOCKET_SITE        := $(CONFIG_PK_SELECT_SOCKET_URL)
PK_SELECT_SOCKET_GITHUB      := $(CONFIG_PK_SELECT_SOCKET_GITHUB)
PK_SELECT_SOCKET_SUBNAME     :=
PK_SELECT_SOCKET_BUILDARCH   := $(CONFIG_PK_SELECT_SOCKET_BUILDARCH)
PK_SELECT_SOCKET_DIR         := $(srctree)/package/IO/Async/select_socket
PK_SELECT_SOCKET_PATCH       := $(PK_SELECT_SOCKET_DIR)/patch
PK_SELECT_SOCKET_BSBIT       := select_socket-$(PK_SELECT_SOCKET_VERSION).bsbit
PK_SELECT_SOCKET_OUT         :=
PK_SELECT_SOCKET_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_SELECT_SOCKET_TAR         := $(CONFIG_PK_SELECT_SOCKET_TAR)
PK_SELECT_SOCKET_PACKAGE     :=
PK_SELECT_SOCKET_CONFIG      := $(CONFIG_PK_SELECT_SOCKET_CONFIG)
SUB_TARGET                  += $(PK_SELECT_SOCKET_DIR)/build

PK_SELECT_SOCKET_sh = $(CONFIG_SHELL) $(PK_SELECT_SOCKET_SCRIPTS) \
                 $1X \
                 $(PK_SELECT_SOCKET_NAME)X \
                 $(PK_SELECT_SOCKET_VERSION)X \
                 $(PK_SELECT_SOCKET_SITE)X \
                 $(PK_SELECT_SOCKET_GITHUB)X \
                 $(PK_SELECT_SOCKET_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SELECT_SOCKET_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SELECT_SOCKET_SUBNAME)X \
                 $(CONFIG_PK_SELECT_SOCKET_CONFIG)X \
                 $(CONFIG_PK_SELECT_SOCKET_LIBPATH)X \
                 $(CONFIG_PK_SELECT_SOCKET_CPPFLAGS)X \
                 $(CONFIG_PK_SELECT_SOCKET_DPKCONFIG)X \
                 $(CONFIG_PK_SELECT_SOCKET_CFLAGS)X \
                 $(CONFIG_PK_SELECT_SOCKET_LDFLAGS)X \
                 $(CONFIG_PK_SELECT_SOCKET_CXXFLAGS)X \
                 $(CONFIG_PK_SELECT_SOCKET_ASFLAGS)X \
                 $(PK_SELECT_SOCKET_BSBIT)X \
                 $(PK_SELECT_SOCKET_BUILDARCH)X \
		 $(PK_SELECT_SOCKET_CSRCFILE)X \
                 $(CONFIG_PK_SELECT_SOCKET_SRCFILE)X \
                 $(CONFIG_PK_SELECT_SOCKET_CSRCFILE)

$(PK_SELECT_SOCKET_DIR)/build: FORCE
	$(Q)$(call PK_SELECT_SOCKET_sh,$(srctree))

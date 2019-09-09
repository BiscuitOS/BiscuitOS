################################################
#
# Python
#
################################################
PK_PYTHON_NAME		:= Python
PK_PYTHON_VERSION	:= $(CONFIG_PK_PYTHON_VERSION)
PK_PYTHON_SITE		:= $(CONFIG_PK_PYTHON_URL)
PK_PYTHON_GITHUB	:= $(CONFIG_PK_PYTHON_GITHUB)
PK_PYTHON_SUBNAME	:=
PK_PYTHON_BUILDARCH	:= $(CONFIG_PK_PYTHON_BUILDARCH)
PK_PYTHON_DIR		:= $(srctree)/package/Python
PK_PYTHON_PATCH		:= $(PK_PYTHON_DIR)/patch
PK_PYTHON_BSBIT		:= Python-$(PK_PYTHON_VERSION).bsbit
PK_PYTHON_OUT		:=
PK_PYTHON_SCRIPTS	:= $(srctree)/scripts/package/package.sh
PK_PYTHON_TAR		:= $(CONFIG_PK_PYTHON_TAR)
PK_PYTHON_PACKAGE	:=
PK_PYTHON_CONFIG	:= $(CONFIG_PK_PYTHON_CONFIG)
SUB_TARGET		+= $(PK_PYTHON_DIR)/build

PK_PYTHON_sh = $(CONFIG_SHELL) $(PK_PYTHON_SCRIPTS) \
                 $1X \
                 $(PK_PYTHON_NAME)X \
                 $(PK_PYTHON_VERSION)X \
                 $(PK_PYTHON_SITE)X \
                 $(PK_PYTHON_GITHUB)X \
                 $(PK_PYTHON_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PYTHON_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PYTHON_SUBNAME)X \
                 $(CONFIG_PK_PYTHON_CONFIG)X \
                 $(CONFIG_PK_PYTHON_LIBPATH)X \
                 $(CONFIG_PK_PYTHON_CPPFLAGS)X \
                 $(CONFIG_PK_PYTHON_DPKCONFIG)X \
                 $(CONFIG_PK_PYTHON_CFLAGS)X \
                 $(CONFIG_PK_PYTHON_LDFLAGS)X \
                 $(CONFIG_PK_PYTHON_CXXFLAGS)X \
                 $(CONFIG_PK_PYTHON_ASFLAGS)X \
                 $(PK_PYTHON_BSBIT)X \
                 $(PK_PYTHON_BUILDARCH)X

$(PK_PYTHON_DIR)/build: FORCE
	$(Q)$(call PK_PYTHON_sh,$(srctree))

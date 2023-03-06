################################################
#
# BiscuitOS-perf
#
################################################
PK_LINUX_PERF_NAME	:= BiscuitOS-perf
PK_LINUX_PERF_VERSION	:= $(CONFIG_PK_LINUX_PERF_VERSION)
PK_LINUX_PERF_SITE	:= $(CONFIG_PK_LINUX_PERF_URL)
PK_LINUX_PERF_GITHUB	:= $(CONFIG_PK_LINUX_PERF_GITHUB)
PK_LINUX_PERF_SUBNAME	:=
PK_LINUX_PERF_BUILDARCH	:= $(CONFIG_PK_LINUX_PERF_BUILDARCH)
PK_LINUX_PERF_DIR	:= $(srctree)/package/PERF-TOOLS
PK_LINUX_PERF_PATCH	:= $(PK_LINUX_PERF_DIR)/patch
PK_LINUX_PERF_BSBIT	:= BiscuitOS-perf-$(PK_LINUX_PERF_VERSION).bsbit
PK_LINUX_PERF_OUT	:=
PK_LINUX_PERF_SCRIPTS	:= $(srctree)/scripts/package/package-perf.sh
PK_LINUX_PERF_TAR	:= $(CONFIG_PK_LINUX_PERF_TAR)
PK_LINUX_PERF_PACKAGE	:=
PK_LINUX_PERF_CONFIG	:= $(CONFIG_PK_LINUX_PERF_CONFIG)
SUB_TARGET		+= $(PK_LINUX_PERF_DIR)/build

PK_LINUX_PERF_sh = $(CONFIG_SHELL) $(PK_LINUX_PERF_SCRIPTS) \
                 $1X \
                 $(PK_LINUX_PERF_NAME)X \
                 $(PK_LINUX_PERF_VERSION)X \
                 $(PK_LINUX_PERF_SITE)X \
                 $(PK_LINUX_PERF_GITHUB)X \
                 $(PK_LINUX_PERF_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LINUX_PERF_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LINUX_PERF_SUBNAME)X \
                 $(CONFIG_PK_LINUX_PERF_CONFIG)X \
                 $(CONFIG_PK_LINUX_PERF_LIBPATH)X \
                 $(CONFIG_PK_LINUX_PERF_CPPFLAGS)X \
                 $(CONFIG_PK_LINUX_PERF_DPKCONFIG)X \
                 $(CONFIG_PK_LINUX_PERF_CFLAGS)X \
                 $(CONFIG_PK_LINUX_PERF_LDFLAGS)X \
                 $(CONFIG_PK_LINUX_PERF_CXXFLAGS)X \
                 $(CONFIG_PK_LINUX_PERF_ASFLAGS)X \
                 $(PK_LINUX_PERF_BSBIT)X \
                 $(PK_LINUX_PERF_BUILDARCH)X

$(PK_LINUX_PERF_DIR)/build: FORCE
	$(Q)$(call PK_LINUX_PERF_sh,$(srctree))

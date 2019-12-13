################################################
#
# Docker filesystem
#
################################################
DOCKER_NAME       := BiscuitOS
DOCKER_VERSION    := $(CONFIG_DOCKER_VERSION)
DOCKER_SITE       := $(CONFIG_DOCKER_WGET_SITE)
DOCKER_GITHUB     := $(DOCKER_GITHUB_SITE)
DOCKER_SUBNAME    := $(CONFIG_DOCKER_DL_NAME)
DOCKER_DIR        := $(srctree)/fs/
DOCKER_PATCH      := $(srctree)/fs/patch
DOCKER_OUT        := 
DOCKER_SCRIPTS    := $(srctree)/scripts/fs/Desktop.sh
DOCKER_TAR        := $(CONFIG_DOCKER_TAR_TYPE)
DOCKER_PACKAGE    := 
DOCKER_RUN_ONLY   := N
SUB_TARGET      += $(DOCKER_DIR)/build

DOCKER_sh = $(CONFIG_SHELL) $(DOCKER_SCRIPTS) \
               ${1}X $(DOCKER_NAME)X $(DOCKER_VERSION)X \
               $(DOCKER_SITE)X $(DOCKER_GITHUB)X \
               $(DOCKER_PATCH)X $(CONFIG_LINUX_KERNEL_VERSION)X \
	       $(CONFIG_DOCKER_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(DOCKER_TAR)X $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(DOCKER_SUBNAME)X \
               $(CONFIG_LINUX_BUILD_HIST)X $(CONFIG_UBOOT)X \
               $(CONFIG_UBOOT_CROSS_COMPILE)X \
               $(CONFIG_ROOTFS_SIZE)X \
               $(CONFIG_FREEZE_SIZE)X $(DOCKER_RUN_ONLY)X \
               DockerX

$(DOCKER_DIR)/build: FORCE
	$(Q)$(call DOCKER_sh,$(srctree))

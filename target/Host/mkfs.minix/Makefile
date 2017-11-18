##########################################
#
# To build Host mkfs.minix 
#
##########################################
HOST_MKFS_MINIX_NAME     := mkfs.minix
HOST_MKFS_MINIX_VERSION  := 0.0.1
HOST_MKFS_MINIX_SITE     := 
HOST_MKFS_MINIX_DIR      := $(srctree)/target/Host/$(HOST_MKFS_MINIX_NAME)
HOST_MKFS_MINIX_SCRIPTS  := 
SUB_TARGET         += $(HOST_MKFS_MINIX_DIR)/compile

pre_host_minix_dir = mkdir -p $(srctree)/output/host/bin/

quiet_compile_host_mkfs.minix = HOSTCC   mkfs.minix
      compile_host_mkfs.minix = $(HOSTCC) $(HOST_MKFS_MINIX_DIR)/minix.c -o \
                                $(srctree)/output/host/bin/$(HOST_MKFS_MINIX_NAME)

$(HOST_MKFS_MINIX_DIR)/compile: FORCE
	$(Q)$(call pre_host_minix_dir)
	$(Q)$(call compile_host_mkfs.minix)



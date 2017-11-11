#################################################
#
# OBJDUMP
#
#############################################3###
OBJDUMP_NAME    = objdump
OBJDUMP_VERSION = 0.1
OBJDUMP_SOURCE  = objdump-$(OBJDUMP_VERSION).c
OBJDUMP_SITE    = 
OBJDUMP_CMD     = $(OBJDUMP_NAME)_$(OBJDUMP_VERSION)
SUB_TARGET   += $(PACKAGE_DIR)/$(OBJDUMP_NAME)

OBJDUMP_CC      = $(CC)
OBJDUMP_CFLAGS  = $(CFLAGS)

quiet_cmd_$(OBJDUMP_CMD) = CC      $(OBJDUMP_NAME)
      cmd_$(OBJDUMP_CMD) = $(OBJDUMP_CC) $(OBJDUMP_CFLAGS) \
                        $(PACKAGE_DIR)/$(OBJDUMP_NAME)/$(OBJDUMP_SOURCE) \
                        -o $(STAGING_DIR)/binutils/$(OBJDUMP_NAME)

$(PACKAGE_DIR)/$(OBJDUMP_NAME): FORCE
	$(call if_changed,$(OBJDUMP_CMD))


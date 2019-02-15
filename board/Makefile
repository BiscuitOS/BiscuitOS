BOARD-$(CONFIG_SUPPORT_BOARD_INDV)         += dts/

BOARD_MAKEDIR := $(patsubst %/, $(srctree)/board/%/Makefile, $(BOARD-y))

include $(BOARD_MAKEDIR)

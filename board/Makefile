BOARD-y                               += dts/

BOARD_MAKEDIR := $(patsubst %/, $(srctree)/board/%/Makefile, $(BOARD-y))

include $(BOARD_MAKEDIR)

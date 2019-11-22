spi-$(CONFIG_PK_SPI_MOD)	+= spi_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/spi/%/Makefile, $(spi-y))

include $(PACKAGE_MAKEDIR)

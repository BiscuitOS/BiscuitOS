deps_config := \
	linux/Kconfig \
	toolchain/aarch64-linux-gnu/Kconfig \
	toolchain/arm-linux-gnueabihf/Kconfig \
	toolchain/arm-linux-gnueabi/Kconfig \
	toolchain/leg_gcc/Kconfig \
	toolchain/Kconfig \
	fs/ext4/Kconfig \
	fs/Kconfig \
	package/qemu/Kconfig \
	package/busybox/Kconfig \
	package/Kconfig \
	boot/u-boot/Kconfig \
	boot/SeaBIOS/Kconfig \
	boot/Kconfig \
	board/dts/Kconfig \
	board/Kconfig \
	arch/Kconfig \
	Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;

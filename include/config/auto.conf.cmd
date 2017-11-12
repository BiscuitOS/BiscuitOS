deps_config := \
	target/Host/qemu/Kconfig \
	target/Host/Kconfig \
	fs/Kconfig \
	target/kernel/Kconfig \
	package/objdump/Kconfig \
	package/demo/Kconfig \
	package/Kconfig \
	Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;

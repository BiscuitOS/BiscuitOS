#!/bin/bash

ROOT=`pwd`
export CROSS_COMPILE=../../output/aarch64-gcc/gcc-aarch64/bin/aarch64-linux-gnu-
export ARCH=arm64

do_running()
{
  sudo ../../output/qemu/qemu/aarch64-softmmu/qemu-system-aarch64 -M virt -cpu cortex-a53 -smp 2 -m 1024M -kernel arch/arm64/boot/Image -nodefaults -serial stdio -nographic -append "earlycon root=/dev/ram0 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc loglevel=8" -initrd ramdisk.img
}

if [ $1 = "start" ]; then
  do_running
fi

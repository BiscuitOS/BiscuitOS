#!/bin/bash
# BiscuitOS X86-64 QEMU GDB KERNEL STUB
# BiscuitOS 2024.03.01

ROOT=$1

# GDB on BOOT for vmlinuxz
MF=${ROOT}/package/gdb/GDB-X86-BOOTLOADER.gbf

echo '# Debug bootloader for vmlinuxz' > ${MF}
echo '#' >> ${MF}
echo '# (C) BiscuitOS <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo '# Setup architecture' >> ${MF}
echo '#' >> ${MF}
echo 'set architecture i386:x86-64' >> ${MF}
echo '# Remote to GDB' >> ${MF}
echo '#' >> ${MF}
echo 'target remote :1234' >> ${MF}
echo '# Load bootloader for kernel' >> ${MF}
echo "add-symbol-file ${ROOT}/linux/linux/arch/x86/boot/setup.elf" >> ${MF}
echo 'hb *0x111ab' >> ${MF}
echo 'c' >> ${MF}
echo 'd 1' >> ${MF}
echo '' >> ${MF}
echo '# START ENTRY <_start(0x200)> on arch/x86/boot/header.S' >> ${MF}
echo '# BTW, True Entry on start_of_setup' >> ${MF}
echo '# @BiscuitOS' >> ${MF}

# GDB on for vmlinuxz
MF=${ROOT}/package/gdb/GDB-X86-BOOT-VMLINUXZ.gbf

echo '# Debug for vmlinuxz' > ${MF}
echo '#' >> ${MF}
echo '# (C) BiscuitOS <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo '# Setup architecture' >> ${MF}
echo '#' >> ${MF}
echo 'set architecture i386:x86-64' >> ${MF}
echo '# Remote to GDB' >> ${MF}
echo '#' >> ${MF}
echo 'target remote :1234' >> ${MF}
echo '# Load vmlinuxz' >> ${MF}
echo "add-symbol-file ${ROOT}/linux/linux/arch/x86/boot/compressed/vmlinux" >> ${MF}
echo 'hb *0x100000' >> ${MF}
echo 'c' >> ${MF}
echo '' >> ${MF}
echo '# START ENTRY <startup_32> on arch/x86/boot/compressed/head_64.S' >> ${MF}
echo '# @BiscuitOS' >> ${MF}

# GDB on for vmlinux on ASM
MF=${ROOT}/package/gdb/GDB-X86-ASM-VMLINUX.gbf

echo '# Debug ASM for VMLINUX' > ${MF}
echo '#' >> ${MF}
echo '# (C) BiscuitOS <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo '# Setup architecture' >> ${MF}
echo '#' >> ${MF}
echo 'set architecture i386:x86-64' >> ${MF}
echo '# Remote to GDB' >> ${MF}
echo '#' >> ${MF}
echo 'target remote :1234' >> ${MF}
echo '# Load vmlinux' >> ${MF}
echo "add-symbol-file ${ROOT}/linux/linux/vmlinux" >> ${MF}
echo 'hb *0x1000000' >> ${MF}
echo 'c' >> ${MF}
echo '' >> ${MF}
echo '# START ENTRY <startup_64> on arch/x86/kernel/head_64.S' >> ${MF}
echo '# @BiscuitOS' >> ${MF}

# GDB on for vmlinux on C
MF=${ROOT}/package/gdb/GDB-X86-C-VMLINUX.gbf

echo '# Debug C for VMLINUX' > ${MF}
echo '#' >> ${MF}
echo '# (C) BiscuitOS <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo '# Setup architecture' >> ${MF}
echo '#' >> ${MF}
echo 'set architecture i386:x86-64' >> ${MF}
echo '# Remote to GDB' >> ${MF}
echo '#' >> ${MF}
echo 'target remote :1234' >> ${MF}
echo '# Load vmlinux' >> ${MF}
echo "add-symbol-file ${ROOT}/linux/linux/vmlinux" >> ${MF}
echo 'hb *x86_64_start_kernel' >> ${MF}
echo 'c' >> ${MF}
echo '' >> ${MF}
echo '# START ENTRY <x86_64_start_kernel> on arch/x86/kernel/head64.c' >> ${MF}
echo '# @BiscuitOS' >> ${MF}

# GDB on for #PF
MF=${ROOT}/package/gdb/GDB-X86-PF.gbf

echo '# Debug for #PF' > ${MF}
echo '#' >> ${MF}
echo '# (C) BiscuitOS <buddy.zhang@aliyun.com>' >> ${MF}
echo '#' >> ${MF}
echo '# This program is free software; you can redistribute it and/or modify' >> ${MF}
echo '# it under the terms of the GNU General Public License version 2 as' >> ${MF}
echo '# published by the Free Software Foundation.' >> ${MF}
echo '' >> ${MF}
echo '# Setup architecture' >> ${MF}
echo '#' >> ${MF}
echo 'set architecture i386:x86-64' >> ${MF}
echo '# Remote to GDB' >> ${MF}
echo '#' >> ${MF}
echo 'target remote :1234' >> ${MF}
echo '# Load vmlinux' >> ${MF}
echo "add-symbol-file ${ROOT}/linux/linux/vmlinux" >> ${MF}
echo 'hb *BiscuitOS_memory_fluid_gdb_stub' >> ${MF}
echo 'c' >> ${MF}
echo '' >> ${MF}
echo '# START ENTRY <x86_64_start_kernel> on arch/x86/kernel/head64.c' >> ${MF}
echo '# @BiscuitOS' >> ${MF}

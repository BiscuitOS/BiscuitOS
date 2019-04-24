#!/usr/bin/perl

# GDB helper scripts.
#
# (C) 2019.04.15 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

use strict;

my $ROOT=shift;
my $CROSS_COMP=shift;

## Default file
my $GDB_FILE="$ROOT/package/gdb/gdb_vmlinux_obj";
my $GDB_FIL2="$ROOT/package/gdb/gdb_vmlinux_elf";
my $VM_FILE="$ROOT/linux/linux/arch/arm/boot/compressed/vmlinux";
my $VM_KERN="$ROOT/linux/linux/vmlinux";
my $CROSS_TOOLS="$ROOT/$CROSS_COMP/$CROSS_COMP/bin/$CROSS_COMP";

## Auto objdump vmlinux file
`$CROSS_TOOLS-objdump -x $VM_FILE > $GDB_FILE`;
`$CROSS_TOOLS-readelf -S $VM_KERN > $GDB_FIL2`;

my $restart=hex(`cat $GDB_FILE | grep " restart" | awk '{print \$1}'`);
my $Image=`ls -l $ROOT/linux/linux/arch/arm/boot/Image | awk '{print \$5}'`;
my $kernel_start=0x60008000;
my $load=0x60010000;
my $RAM_base=0x60000000;
my $RAM_Vbase=0x80000000;
my $reloc=hex(`cat $GDB_FILE | grep "reloc_code_end" | awk '{print \$1}'`);
my $end=hex(`cat $GDB_FILE | grep " _end" | awk '{print \$1}'`);
my $kern_text=hex(`cat $GDB_FIL2 | grep " .text " | awk '{print \$5}'`);
my $kern_htext=hex(`cat $GDB_FIL2 | grep " .head.text " | awk '{print \$5}'`);
my $kern_text=hex(`cat $GDB_FIL2 | grep " .text " | awk '{print \$5}'`);
my $kern_rodata=hex(`cat $GDB_FIL2 | grep " .rodata " | awk '{print \$5}'`);
my $kern_inittext=hex(`cat $GDB_FIL2 | grep " .init.text " | awk '{print \$4}'`);;
my $kern_mask=0xFFFFFFF;

## Remove tmpfile
`rm $GDB_FILE`;
`rm $GDB_FIL2`;

my ($r5, $r9, $r6, $r10);
my $size;
my $final;

# Kernel end execute address
$r10 = $kernel_start + $Image;
# Protect area for relocated
$r10 = ($r10 + (($reloc - $restart + 256) & 0xFFFFFF00)) & 0xffffff00;

# Runnung address for restart.
$r5 = $restart + $load;
$r5 &= 0xffffffE0;

# Running address for end address of zImage
$r6 = $end + $load;

# Size to Relocate for zImage
$r9 = $r6 - $r5;
$r9 += 31;
$r9 &= 0xffffffe0;
$size = $r9;

# End address of zImage
$r6 = $r9 + $r5;
# end relocated address of zImage
$r9 += $r10;

# Start address for Relocated zImage
$r9 -= $size;
# Start address of zImage
$r6 = $r5;

# Relocated size
$size = $r9 - $r6;

# Call Relocated address for zIamge
$final = $size + $load;

### Calculate Real-kernel
$kern_text     = ($kern_text & $kern_mask) + $RAM_base;
$kern_htext    = ($kern_htext & $kern_mask) + $RAM_base;
$kern_rodata   = ($kern_rodata & $kern_mask) + $RAM_base;

## Establish .gdbinit file
my $gdb_zImage="$ROOT/package/gdb/gdb_zImage";
my $gdb_RzImage="$ROOT/package/gdb/gdb_RzImage";
my $gdb_Image="$ROOT/package/gdb/gdb_Image";
my $gdb_RImage="$ROOT/package/gdb/gdb_RImage";
my $gdb_Kernel="$ROOT/package/gdb/gdb_Kernel";

## Remove file
`rm $gdb_zImage` if -e $gdb_zImage;
`rm $gdb_RzImage` if -e $gdb_RzImage;
`rm $gdb_Image` if -e $gdb_Image;
`rm $gdb_RImage` if -e $gdb_RImage;
`rm $gdb_Kernel` if -e $gdb_Kernel;

## Create gdb_zIamge
my $content_string="add-symbol-file $ROOT/linux/linux/arch/arm/boot/compressed/vmlinux 0x60010000";
open FH, ">>$gdb_zImage";
print FH "# Debug zImage before relocated zImage\n";
print FH "#\n";
print FH "# (C) 2019.04.11 BuddyZhang1 <buddy.zhang\@aliyun.com>\n";
print FH "#\n";
print FH "# This program is free software; you can redistribute it and/or modify\n";
print FH "# it under the terms of the GNU General Public License version 2 as\n";
print FH "# published by the Free Software Foundation.\n";
print FH " \n";
print FH "# Remote to gdb\n";
print FH "#\n";
print FH "target remote :1234\n";
print FH "\n";
print FH "# Load vmlinux for zImage\n";
print FH "#\n";
print FH "$content_string\n";
close FH;

## Create gdb_RzIamge
$content_string=sprintf "add-symbol-file $ROOT/linux/linux/arch/arm/boot/compressed/vmlinux %#x", $final;
open FH, ">>$gdb_RzImage";
print FH "# Debug zImage after relocated zImage\n";
print FH "#\n";
print FH "# (C) 2019.04.11 BuddyZhang1 <buddy.zhang\@aliyun.com>\n";
print FH "#\n";
print FH "# This program is free software; you can redistribute it and/or modify\n";
print FH "# it under the terms of the GNU General Public License version 2 as\n";
print FH "# published by the Free Software Foundation.\n";
print FH " \n";
print FH "# Remote to gdb\n";
print FH "#\n";
print FH "target remote :1234\n";
print FH "\n";
print FH "# Reload vmlinux for zImage\n";
print FH "#\n";
print FH "$content_string\n";
close FH;

## Create gdb_Image
$content_string=sprintf "add-symbol-file $ROOT/linux/linux/vmlinux %#x -s .head.text %#x -s .rodata %#x -s .init.text %#x", $kern_text, $kern_htext, $kern_rodata, $kern_inittext;
open FH, ">>$gdb_Image";
print FH "# Debug Image MMU off before start_kernel\n";
print FH "#\n";
print FH "# (C) 2019.04.11 BuddyZhang1 <buddy.zhang\@aliyun.com>\n";
print FH "#\n";
print FH "# This program is free software; you can redistribute it and/or modify\n";
print FH "# it under the terms of the GNU General Public License version 2 as\n";
print FH "# published by the Free Software Foundation.\n";
print FH " \n";
print FH "# Remote to gdb\n";
print FH "#\n";
print FH "target remote :1234\n";
print FH "\n";
print FH "# Reload Image\n";
print FH "#\n";
print FH "$content_string\n";
close FH;

## Create gdb_Image After MMU on
$kern_text     = ($kern_text & $kern_mask) + $RAM_Vbase;
$kern_htext    = ($kern_htext & $kern_mask) + $RAM_Vbase;
$kern_rodata   = ($kern_rodata & $kern_mask) + $RAM_Vbase;
$kern_inittext = ($kern_inittext & $kern_mask) + $RAM_Vbase;

$content_string=sprintf "add-symbol-file $ROOT/linux/linux/vmlinux %#x -s .head.text %#x -s .rodata %#x -s .init.text %#x", $kern_text, $kern_htext, $kern_rodata, $kern_inittext;
open FH, ">>$gdb_RImage";
print FH "# Debug Image MMU on before start_kernel\n";
print FH "#\n";
print FH "# (C) 2019.04.11 BuddyZhang1 <buddy.zhang\@aliyun.com>\n";
print FH "#\n";
print FH "# This program is free software; you can redistribute it and/or modify\n";
print FH "# it under the terms of the GNU General Public License version 2 as\n";
print FH "# published by the Free Software Foundation.\n";
print FH " \n";
print FH "# Remote to gdb\n";
print FH "#\n";
print FH "target remote :1234\n";
print FH "\n";
print FH "# Reload vmlinux for Image\n";
print FH "#\n";
print FH "$content_string\n";
close FH;

# Kernel GDB .gdbinit
open FH, ">>$gdb_Kernel";
print FH "# Debug Normal Kernel\n";
print FH "#\n";
print FH "# (C) 2019.04.11 BuddyZhang1 <buddy.zhang\@aliyun.com>\n";
print FH "#\n";
print FH "# This program is free software; you can redistribute it and/or modify\n";
print FH "# it under the terms of the GNU General Public License version 2 as\n";
print FH "# published by the Free Software Foundation.\n";
print FH " \n";
print FH "# Remote to gdb\n";
print FH "#\n";
print FH "target remote :1234\n";
close FH;

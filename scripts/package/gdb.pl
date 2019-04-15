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
my $VM_FILE="$ROOT/linux/linux/arch/arm/boot/compressed/vmlinux";
my $CROSS_TOOLS="$ROOT/$CROSS_COMP/$CROSS_COMP/bin/$CROSS_COMP";

## Auto objdump vmlinux file
`$CROSS_TOOLS-objdump -x $VM_FILE > $GDB_FILE`;

my $restart=hex(`cat $GDB_FILE | grep " restart" | awk '{print \$1}'`);
my $Image=`ls -l $ROOT/linux/linux/arch/arm/boot/Image | awk '{print \$5}'`;
my $kernel_start=0x60008000;
my $load=0x60010000;
my $reloc=hex(`cat $GDB_FILE | grep "reloc_code_end" | awk '{print \$1}'`);
my $end=hex(`cat $GDB_FILE | grep " _end" | awk '{print \$1}'`);

## Remove tmpfile
`rm $GDB_FILE`;

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
$final = $size + $restart + $load;

printf "%#x\n", $final;

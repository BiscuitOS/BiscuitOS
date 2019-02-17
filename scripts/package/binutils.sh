#!/bin/bash

set -e
#
# This scripts is used to download and establish core file
#
# (C) 2018.07.23 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#

###
# Don't edit
ROOT=${1%X}
PACKAGE=${2%X}
VERSION=${3%X}
KERN_VERSION=${4%X}
GITHUB=${5%X}
PROJNAME=${6%X}
OUTPUT=${ROOT}/output/${PROJNAME}
STAGING_DIR=${OUTPUT}/rootfs/${PACKAGE}
NODE_TYPE=0
PACKAGE_NAME=

target_dir=(
bin
dev
etc
home
INSTALL
lib
mnt
tmp
usr
)

## Pre-Check
precheck()
{
    mkdir -p ${ROOT}/dl ${STAGING_DIR} ${OUTPUT}/rootfs/rootfs

    j=0
    for dir in ${target_dir[@]}; do
        mkdir -p ${STAGING_DIR}/${dir}
        j=`expr $j + 1`
    done

    if [ ${KERN_VERSION}X = "0.97.1X" -o ${KERN_VERSION}X = "0.96.1X" -o \
         ${KERN_VERSION}X = "0.95aX"  -o ${KERN_VERSION}X = "0.95.3X"  -o \
         ${KERN_VERSION}X = "0.95.1X" -o ${KERN_VERSION}X = "0.12.1X" -o \
         ${KERN_VERSION}X = "0.11.3X" ]; then
        NODE_TYPE=0
        VERSION=1
        PACKAGE_NAME=${PACKAGE}.${VERSION}.tar.bz2
    else
        NODE_TYPE=1
        VERSION=2
        PACKAGE_NAME=${PACKAGE}.${VERSION}.tar.bz2
    fi
}

## Create node
node_table()
{
    cd ${STAGING_DIR}/dev

    if [ ${NODE_TYPE} -eq 0 ]; then
        #######      node name   Char/Block  Major  Minor
        sudo mknod   fd0         b           2      28   > /dev/null 2>&1
        sudo mknod   fd1         b           2      29   > /dev/null 2>&1
        sudo mknod   floppy0     b           2      28   > /dev/null 2>&1
        sudo mknod   floppy1     b           2      29   > /dev/null 2>&1
        sudo mknod   hd0         b           3      0    > /dev/null 2>&1
        sudo mknod   hd1         b           3      1    > /dev/null 2>&1
        sudo mknod   hd2         b           3      2    > /dev/null 2>&1
        sudo mknod   hd3         b           3      3    > /dev/null 2>&1
        sudo mknod   hd4         b           3      4    > /dev/null 2>&1
        sudo mknod   hd5         b           3      5    > /dev/null 2>&1
        sudo mknod   hd6         b           3      6    > /dev/null 2>&1
        sudo mknod   hd7         b           3      7    > /dev/null 2>&1
        sudo mknod   hd8         b           3      8    > /dev/null 2>&1
        sudo mknod   null        b           1      3    > /dev/null 2>&1
        sudo mknod   tty         c           5      0    > /dev/null 2>&1
        sudo mknod   tty0        c           4      0    > /dev/null 2>&1
        sudo mknod   tty1        c           4      1    > /dev/null 2>&1
        sudo mknod   tty10       c           4      10   > /dev/null 2>&1
        sudo mknod   tty2        c           4      2    > /dev/null 2>&1
        sudo mknod   tty3        c           4      3    > /dev/null 2>&1
        sudo mknod   tty4        c           4      4    > /dev/null 2>&1
        sudo mknod   tty5        c           4      5    > /dev/null 2>&1
        sudo mknod   tty6        c           4      6    > /dev/null 2>&1
        sudo mknod   tty7        c           4      7    > /dev/null 2>&1
        sudo mknod   tty8        c           4      8    > /dev/null 2>&1
        sudo mknod   tty9        c           4      9    > /dev/null 2>&1
    else 
        #######      node name   Char/Block  Major  Minor
        sudo mknod   bm          c           10     0   > /dev/null 2>&1 
        sudo mknod   console     c           4      0   > /dev/null 2>&1 
        sudo mknod   fd0         b           2      0   > /dev/null 2>&1
        sudo mknod   fd0d360     b           2      4   > /dev/null 2>&1
        sudo mknod   fd0D360     b           2      12  > /dev/null 2>&1
        sudo mknod   fd0D720     b           2      16  > /dev/null 2>&1
        sudo mknod   fd0h1200    b           2      8   > /dev/null 2>&1
        sudo mknod   fd0H1440    b           2      28  > /dev/null 2>&1
        sudo mknod   fd0h360     b           2      20  > /dev/null 2>&1
        sudo mknod   fd0H360     b           2      12  > /dev/null 2>&1
        sudo mknod   fd0h720     b           2      17  > /dev/null 2>&1
        sudo mknod   fd0H720     b           2      16  > /dev/null 2>&1
        sudo mknod   fd1         b           2      1   > /dev/null 2>&1
        sudo mknod   fd1d360     b           2      5   > /dev/null 2>&1
        sudo mknod   fd1D360     b           2      13  > /dev/null 2>&1
        sudo mknod   fd1D720     b           2      17  > /dev/null 2>&1
        sudo mknod   fd1h1200    b           2      9   > /dev/null 2>&1
        sudo mknod   fd1H1440    b           2      29  > /dev/null 2>&1
        sudo mknod   fd1h360     b           2      21  > /dev/null 2>&1
        sudo mknod   fd1H360     b           2      13  > /dev/null 2>&1
        sudo mknod   fd1h720     b           2      25  > /dev/null 2>&1
        sudo mknod   fd1H720     b           2      17  > /dev/null 2>&1
        sudo mknod   hda         b           3      0   > /dev/null 2>&1
        sudo mknod   hda1        b           3      1   > /dev/null 2>&1
        sudo mknod   hda2        b           3      2   > /dev/null 2>&1
        sudo mknod   hda3        b           3      3   > /dev/null 2>&1
        sudo mknod   hda4        b           3      4   > /dev/null 2>&1
        sudo mknod   hda5        b           3      5   > /dev/null 2>&1
        sudo mknod   hda6        b           3      6   > /dev/null 2>&1
        sudo mknod   hda7        b           3      7   > /dev/null 2>&1
        sudo mknod   hda8        b           3      8   > /dev/null 2>&1
        sudo mknod   hdb         b           3      64  > /dev/null 2>&1
        sudo mknod   hdb1        b           3      65  > /dev/null 2>&1
        sudo mknod   hdb2        b           3      66  > /dev/null 2>&1
        sudo mknod   hdb3        b           3      67  > /dev/null 2>&1
        sudo mknod   hdb4        b           3      68  > /dev/null 2>&1
        sudo mknod   hdb5        b           3      69  > /dev/null 2>&1
        sudo mknod   hdb6        b           3      70  > /dev/null 2>&1
        sudo mknod   hdb7        b           3      71  > /dev/null 2>&1
        sudo mknod   hdb8        b           3      72  > /dev/null 2>&1
        sudo mknod   kmem        c           1      2   > /dev/null 2>&1
        sudo mknod   lp0         c           6      0   > /dev/null 2>&1
        sudo mknod   lp1         c           6      1   > /dev/null 2>&1
        sudo mknod   lp2         c           6      2   > /dev/null 2>&1
        sudo mknod   mem         c           1      1   > /dev/null 2>&1
        sudo mknod   null        c           1      3   > /dev/null 2>&1
        sudo mknod   port        c           1      4   > /dev/null 2>&1
        sudo mknod   ptyp0       c           4      128 > /dev/null 2>&1
        sudo mknod   ptyp1       c           4      129 > /dev/null 2>&1 
        sudo mknod   ptyp2       c           4      130 > /dev/null 2>&1
        sudo mknod   ptyp3       c           4      131 > /dev/null 2>&1
        sudo mknod   ptyp4       c           4      132 > /dev/null 2>&1
        sudo mknod   ptyp5       c           4      133 > /dev/null 2>&1
        sudo mknod   ptyp6       c           4      134 > /dev/null 2>&1
        sudo mknod   ptyp7       c           4      135 > /dev/null 2>&1
        sudo mknod   ptyp8       c           4      136 > /dev/null 2>&1
        sudo mknod   ptyp9       c           4      137 > /dev/null 2>&1
        sudo mknod   ptypa       c           4      138 > /dev/null 2>&1
        sudo mknod   ptypb       c           4      139 > /dev/null 2>&1
        sudo mknod   ptypc       c           4      140 > /dev/null 2>&1
        sudo mknod   ptypd       c           4      141 > /dev/null 2>&1
        sudo mknod   ptype       c           4      142 > /dev/null 2>&1
        sudo mknod   ptypf       c           4      143 > /dev/null 2>&1
        sudo mknod   ram         b           1      1   > /dev/null 2>&1
        sudo mknod   sda         b           8      0   > /dev/null 2>&1
        sudo mknod   sda1        b           8      1   > /dev/null 2>&1
        sudo mknod   sda2        b           8      2   > /dev/null 2>&1
        sudo mknod   sda3        b           8      3   > /dev/null 2>&1
        sudo mknod   sda4        b           8      4   > /dev/null 2>&1
        sudo mknod   sda5        b           8      5   > /dev/null 2>&1
        sudo mknod   sda6        b           8      6   > /dev/null 2>&1
        sudo mknod   sda7        b           8      7   > /dev/null 2>&1
        sudo mknod   sda8        b           8      8   > /dev/null 2>&1
        sudo mknod   sdb         b           8      16  > /dev/null 2>&1
        sudo mknod   sdb1        b           8      17  > /dev/null 2>&1 
        sudo mknod   sdb2        b           8      18  > /dev/null 2>&1
        sudo mknod   sdb3        b           8      19  > /dev/null 2>&1
        sudo mknod   sdb4        b           8      20  > /dev/null 2>&1
        sudo mknod   sdb5        b           8      21  > /dev/null 2>&1
        sudo mknod   sdb6        b           8      22  > /dev/null 2>&1
        sudo mknod   sdb7        b           8      23  > /dev/null 2>&1
        sudo mknod   sdb8        b           8      24  > /dev/null 2>&1
        sudo mknod   tty         c           5      0   > /dev/null 2>&1
        sudo mknod   tty0        c           4      0   > /dev/null 2>&1
        sudo mknod   tty1        c           4      1   > /dev/null 2>&1
        sudo mknod   tty2        c           4      2   > /dev/null 2>&1 
        sudo mknod   tty3        c           4      3   > /dev/null 2>&1
        sudo mknod   tty4        c           4      4   > /dev/null 2>&1
        sudo mknod   tty5        c           4      5   > /dev/null 2>&1
        sudo mknod   tty6        c           4      6   > /dev/null 2>&1
        sudo mknod   tty7        c           4      7   > /dev/null 2>&1
        sudo mknod   tty8        c           4      8   > /dev/null 2>&1
        sudo mknod   ttyp0       c           4      192 > /dev/null 2>&1  
        sudo mknod   ttyp1       c           4      193 > /dev/null 2>&1 
        sudo mknod   ttyp2       c           4      194 > /dev/null 2>&1 
        sudo mknod   ttyp3       c           4      195 > /dev/null 2>&1 
        sudo mknod   ttyp4       c           4      196 > /dev/null 2>&1 
        sudo mknod   ttyp5       c           4      197 > /dev/null 2>&1 
        sudo mknod   ttyp6       c           4      198 > /dev/null 2>&1 
        sudo mknod   ttyp7       c           4      199 > /dev/null 2>&1 
        sudo mknod   ttyp8       c           4      200 > /dev/null 2>&1 
        sudo mknod   ttyp9       c           4      201 > /dev/null 2>&1 
        sudo mknod   ttypa       c           4      202 > /dev/null 2>&1 
        sudo mknod   ttypb       c           4      203 > /dev/null 2>&1 
        sudo mknod   ttypc       c           4      204 > /dev/null 2>&1 
        sudo mknod   ttypd       c           4      205 > /dev/null 2>&1 
        sudo mknod   ttype       c           4      206 > /dev/null 2>&1 
        sudo mknod   ttypf       c           4      207 > /dev/null 2>&1 
        sudo mknod   ttys0       c           4      64  > /dev/null 2>&1
        sudo mknod   ttys1       c           4      65  > /dev/null 2>&1
        sudo mknod   ttys2       c           4      66  > /dev/null 2>&1
        sudo mknod   ttys3       c           4      67  > /dev/null 2>&1
        sudo mknod   ttys4       c           4      68  > /dev/null 2>&1
        sudo mknod   zero        c           1      5   > /dev/null 2>&1
    fi
    sudo mv ${STAGING_DIR}/dev ${OUTPUT}/rootfs/rootfs
}

install_file()
{
    cd ${ROOT}/dl
    # Download source code from websit
    if [ ! -f ${ROOT}/dl/${PACKAGE_NAME} ]; then
        wget ${GITHUB}/${PACKAGE_NAME}
    fi
    # Unpress tarpackage.
    if [ ! -f ${STAGING_DIR}/usr/bin/cat ]; then
        mkdir -p .tmp
        tar -xjf ${PACKAGE_NAME} -C .tmp > /dev/null 2>&1
        cp -rfa .tmp/${PACKAGE}.${VERSION}/* ${STAGING_DIR}/
        rm -rf .tmp
    fi
    cp -rfa ${STAGING_DIR}/* ${OUTPUT}/rootfs/rootfs
}

### Pre-working
if [ ! -f ${STAGING_DIR}/bin/echo ]; then
    precheck
else
    exit 0
fi

### Establish device node table
if [ ! -f ${STAGING_DIR}/tty0 ]; then
    node_table
fi

### Install core file
install_file

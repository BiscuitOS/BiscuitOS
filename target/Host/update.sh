#!/bin/bash

# Root
ROOT=$1
KERNEL_DIR=${ROOT}/dl/kernel
BOS_DIR=${ROOT}
BIOS_DIR=${ROOT}/dl/SeaBIOS

## Update kernel
cd ${KERNEL_DIR}
git pull

## Update BiscuitOS
cd ${BOS_DIR}
# ignore include/config/ and include/generate
git checkout ${BOS_DIR}/include/config/ > /dev/null 2>&1
git checkout ${BOS_DIR}/include/generated/ > /dev/null 2>&1
git pull

## Update BIOS
cd ${BIOS_DIR}
git pull

### Finish
cd ${ROOT}

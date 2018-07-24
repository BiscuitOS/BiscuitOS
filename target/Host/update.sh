#!/bin/bash

# Root
ROOT=$1
KERNEL_DIR=${ROOT}/dl/kernel
BOS_DIR=${ROOT}

## Update kernel
cd ${KERNEL_DIR}
git pull

## Update BiscuitOS
cd ${BOS_DIR}
git pull

#/bin/bash

set -e
# Establish APOLLO source code.
#
# (C) 2019.07.20 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=${1%X}
APOLLO_NAME=${2%X}
APOLLO_VERSION=${3%X}
APOLLO_AGC_SITE=${4%X}
APOLLO_GITHUB=${5%X}
APOLLO_PATCH=${6%X}
APOLLO_SRC=1
PROJ_NAME=${9%X}
OUTPUT=${ROOT}/output/${PROJ_NAME}
AGC_NAME=AGC
AGC_VERSION=20190720
GIT_APOLLO=${APOLLO_VERSION}

if [ -d ${OUTPUT}/${APOLLO_NAME}/${APOLLO_NAME} ]; then
        version=`sed -n 1p ${OUTPUT}/${APOLLO_NAME}/${APOLLO_NAME}/version`

        if [ ${version} = ${APOLLO_VERSION} ]; then
                exit 0
        fi
fi

## Install development tools
install_tools()
{
# http://www.ibiblio.org/apollo/download.html#Downloading_and_Building_Virtual_AGC
	# Ubuntu 16.04
	sudo add-apt-repository ppa:nilarimogard/webupd8 
	sudo apt-get update
	sudo apt-get install libwxgtk2.8-dev
	sudo apt-get install libsdl1.2-dev liballegro4-dev
	sudo apt-get install libncurses5-dev libgtk2.0-dev
	# Ubuntu 18.04
	sudo apt-get install libwxgtk3.0-dev libsdl1.2-dev 
	sudo apt-get install liballegro4-dev libgtk2.0-dev
	sudo apt-get install libncurses5-dev
}

## Get AGC from github
get_AGC()
{
	# AGC
	if [ ! -d ${ROOT}/dl/${AGC_NAME} ]; then
		cd ${ROOT}/dl/
		git clone --depth 1 ${APOLLO_AGC_SITE} ${AGC_NAME}
		cd ${ROOT}/dl/${AGC_NAME}
	else
		cd ${ROOT}/dl/${AGC_NAME}
		git pull
	fi
	mkdir -p ${OUTPUT}/${AGC_NAME}
	if [ -d ${OUTPUT}/${AGC_NAME}/${AGC_NAME}_github ]; then
		rm -rf ${OUTPUT}/${AGC_NAME}/${AGC_NAME}_github
	fi
	cp -rfa ${ROOT}/dl/${AGC_NAME} ${OUTPUT}/${AGC_NAME}/${AGC_NAME}_github
	cd ${OUTPUT}/${AGC_NAME}/
	rm -rf ${OUTPUT}/${AGC_NAME}/${AGC_NAME}
        ln -s ${OUTPUT}/${AGC_NAME}/${AGC_NAME}_github ${OUTPUT}/${AGC_NAME}/${AGC_NAME}
	echo ${AGC_VERSION} > ${OUTPUT}/${AGC_NAME}/${AGC_NAME}/version
}

## Get Apollo Source Code from github
get_Apollo()
{
	# Apollo
	if [ ! -d ${ROOT}/dl/${APOLLO_NAME} ]; then
		cd ${ROOT}/dl/
		git clone --depth 1 ${APOLLO_GITHUB} ${APOLLO_NAME}
		cd ${ROOT}/dl/${APOLLO_NAME}
	else
		cd ${ROOT}/dl/${APOLLO_NAME}
		git pull
	fi
	mkdir -p ${OUTPUT}/${APOLLO_NAME}
	if [ -d ${OUTPUT}/${APOLLO_NAME}/${APOLLO_NAME}_github ]; then
		rm -rf ${OUTPUT}/${APOLLO_NAME}/${APOLLO_NAME}_github
	fi
	cp -rfa ${ROOT}/dl/${APOLLO_NAME} ${OUTPUT}/${APOLLO_NAME}/${APOLLO_NAME}_github
	cd ${OUTPUT}/${APOLLO_NAME}/
	rm -rf ${OUTPUT}/${APOLLO_NAME}/${APOLLO_NAME}
        ln -s ${OUTPUT}/${APOLLO_NAME}/${APOLLO_NAME}_github ${OUTPUT}/${APOLLO_NAME}/${APOLLO_NAME}
	echo ${APOLLO_VERSION} > ${OUTPUT}/${APOLLO_NAME}/${APOLLO_NAME}/version
}

establish_AGC()
{
	cd ${OUTPUT}/${AGC_NAME}/${AGC_NAME}
	make
	make install
	if [ -d ~/VirtualAGC ]; then
		mv ~/VirtualAGC ${OUTPUT}/${AGC_NAME}
	fi
}

get_AGC
get_Apollo
establish_AGC

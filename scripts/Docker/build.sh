#!/bin/bash

# Root
ROOTDIR=`pwd`
# Docker Image Path
DOCKER_PATH=${ROOTDIR}/Image
# Docker Image Name
DOCKER_NAME=biscuitos-docker
# Docker tarpackage
DOCKER_TAR=${ROOTDIR}/Image/${DOCKER_NAME}.tar
# Dockerfile
DOCKERFILE=${ROOTDIR}/Dockerfile
# Build-Dir
DOCKER_BUILD=${ROOTDIR}/docker-build
# Pbuilder Dirent
PBUILD_DIR=${ROOTDIR}/pbuild-dir
# Pbuild Tar
PBUILD_TAR=${ROOTDIR}/Image/native.tgz

prepare()
{
	[ ! -d ${DOCKER_PATH} ]  && mkdir -p ${DOCKER_PATH}
	[ ! -d ${DOCKER_BUILD} ] && mkdir -p ${DOCKER_BUILD}

	[ -f ${DOCKERFILE} ] && return 0
cat << EOF > ${DOCKERFILE}
# Copyright 2020 BiscuitOS
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Base Image
From ubuntu:18.04

# Mainter
MAINTAINER BuddyZhang1 <buddy.zhang@aliyun.com>

# Base Build ENV tools
RUN /bin/bash -c '\
apt-get update && \
apt-get install -y qemu bc gcc make gdb git figlet && \
apt-get install -y libncurses5-dev iasl sudo && \
apt-get install -y device-tree-compiler bc && \
apt-get install -y flex bison libssl-dev libglib2.0-dev && \
apt-get install -y libfdt-dev libpixman-1-dev && \
apt-get install -y python pkg-config u-boot-tools intltool xsltproc && \
apt-get install -y gperf libglib2.0-dev libgirepository1.0-dev && \
apt-get install -y gobject-introspection && \
apt-get install -y python2.7-dev python-dev bridge-utils && \
apt-get install -y uml-utilities net-tools && \
apt-get install -y libattr1-dev libcap-dev && \
apt-get install -y kpartx libsdl2-dev libsdl1.2-dev && \
apt-get install -y debootstrap bsdtar && \
git clone https://github.com/BiscuitOS/BiscuitOS.git'
EOF
}

# Build Docker 
docker_build()
{
	[ -f ${DOCKER_TAR} ] && return 0
	sudo mkdir -p ${DOCKER_BUILD}
	cd ${DOCKER_BUILD} > /dev/null 2>&1
	# Install file
	sudo cp -a ${DOCKERFILE} ${DOCKER_BUILD}
	# Build Docker Image from Director ${DOCKER_BUILD}
	sudo docker build -t ${DOCKER_NAME} .
	# Build tarpackage
	sudo docker image save -o ${DOCKER_TAR} ${DOCKER_NAME}:latest
	# Remove image
	sudo docker rmi ${DOCKER_NAME}:latest
	# Clear space
	sudo rm -rf ${DOCKER_BUILD}
	cd - > /dev/null 2>&1
}

# Running Docker
docker()
{
	sudo docker load -i ${DOCKER_TAR}
	sudo docker run \
		--rm --privileged --tty -i \
		-v /dev\:/dev \
		-v ${ROOTDIR}\:/rootdir \
		-e "FETCH_PACKAGES=false" \
		-e "HEADLESS_BUILD=" \
		-e "IS_EXTERNAL=true" \
		-e "http_proxy=" \
		${DOCKER_NAME} \
		/bin/bash
}

prepare
docker_build
docker

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
apt-get install -y qemu gcc make gdb git bc figlet && \
apt-get install -y libncurses5-dev iasl && \
apt-get install -y device-tree-compiler && \
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

#!/bin/bash

RELEASE_DISTRO="Unknown"
sudo echo "Prepare install Toolchain"

CheckDistro() {
    # CentOS or REDHAT
    if [[ -n $(sudo find /etc -name "redhat-release") ]] || grep </proc/version -q -i "centos"; then
        CENTOS_VERSION=$(rpm -q centos-release | awk -F "[-]" '{print $3}' | awk -F "[.]" '{print $1}')
        if [[ -z "${centosVersion}" ]] && grep </etc/centos-release "release 8"; then
            CENTOS_VERSION=8
        fi
        RELEASE_DISTRO="CentOS"
    # Debian
    elif grep </etc/issue -q -i "debian" && [[ -f "/etc/issue" ]] || grep </etc/issue -q -i "debian" && [[ -f "/proc/version" ]]; then
        if grep </etc/issue -i "8"; then
            DEBIAN_VERSION=8
        fi
        RELEASE_DISTRO="Debian"
    # Ubuntu
    elif grep </etc/issue -q -i "ubuntu" && [[ -f "/etc/issue" ]] || grep </etc/issue -q -i "ubuntu" && [[ -f "/proc/version" ]]; then
        RELEASE_DISTRO="ubuntu"
        UBUNTU_VERSION=$(lsb_release -r | awk -F " " '{print $2}')
    else
        # Other Don't Support Distro
        echo "Don't Support BiscuitOS on ${release}"
        RELEASE_DISTRO="Unknown"
    fi
}
CheckDistro

APT_UBUNTU22X04() {
    DEB="deb\ \[arch=amd64\]\ http://archive.ubuntu.com/ubuntu\ focal\ main\ universe"
    DEBSTR="deb [arch=amd64] http://archive.ubuntu.com/ubuntu focal main universe"
    DEBFILE="/etc/apt/sources.list"
    if [ `grep -c "${DEB}" ${DEBFILE}` -eq '0' ]; then
        sudo chmod o+w ${DEBFILE}
        sudo echo ${DEBSTR} >> ${DEBFILE}
        sudo chmod o-w ${DEBFILE}
    fi
    sudo apt-get update
    sudo apt-get install -y qemu gcc make gdb git figlet
    sudo apt-get install -y libncurses5-dev iasl wget qemu-system-x86
    sudo apt-get install -y device-tree-compiler build-essential
    sudo apt-get install -y flex bison libssl-dev libglib2.0-dev
    sudo apt-get install -y libfdt-dev libpixman-1-dev
    sudo apt-get install -y python3 pkg-config u-boot-tools intltool xsltproc
    sudo apt-get install -y gperf libglib2.0-dev libgirepository1.0-dev
    sudo apt-get install -y gobject-introspection
    sudo apt-get install -y python3-dev bridge-utils
    sudo apt-get install -y net-tools binutils-dev
    sudo apt-get install -y libattr1-dev libcap-dev
    sudo apt-get install -y kpartx libsdl2-dev libsdl1.2-dev
    sudo apt-get install -y debootstrap
    sudo apt-get install -y libelf-dev gcc-multilib g++-multilib
    sudo apt-get install -y libcap-ng-dev
    sudo apt-get install -y libmount-dev libselinux1-dev libffi-dev libpulse-dev
    sudo apt-get install -y liblzma-dev python3-serial
    sudo apt-get install -y libnuma-dev libnuma1 ninja-build
    sudo apt-get install -y libtool libsysfs-dev
    sudo apt-get install -y libntirpc-dev libtirpc-dev
    sudo apt-get install -y doxygen
    sudo apt-get install -y ndctl
    sudo apt-get install -y bfs-utils
    sudo ln -s /usr/bin/python3 /usr/bin/python
    sudo apt-get install -y gcc-7 g++-7
    sudo apt-get install -y lib32z1 lib32z1-dev libc6:i386
    sudo apt-get install -y e2fsprogs 
    sudo apt-get install -y mtd-utils
    sudo apt-get install -y squashfs-tools
    sudo apt-get install -y btrfs-progs
    sudo apt-get install -y reiserfsprogs
    sudo apt-get install -y jfsutils 
    sudo apt-get install -y xfsprogs
    sudo apt-get install -y gfs2-utils
    sudo apt-get install -y f2fs-tools
}

APT_UBUNTU20X04() {
    DEB="deb\ \[arch=amd64\]\ http://archive.ubuntu.com/ubuntu\ focal\ main\ universe"
    DEBSTR="deb [arch=amd64] http://archive.ubuntu.com/ubuntu focal main universe"
    DEBFILE="/etc/apt/sources.list"
    if [ `grep -c "${DEB}" ${DEBFILE}` -eq '0' ]; then
        sudo chmod o+w ${DEBFILE}
        sudo echo ${DEBSTR} >> ${DEBFILE}
        sudo chmod o-w ${DEBFILE}
    fi
    sudo apt-get update
    sudo apt-get install -y qemu gcc make gdb git figlet
    sudo apt-get install -y libncurses5-dev iasl wget gawk
    sudo apt-get install -y device-tree-compiler qemu-system-x86
    sudo apt-get install -y flex bison libglib2.0-dev
    sudo apt-get install -y libfdt-dev libpixman-1-dev
    sudo apt-get install -y python pkg-config u-boot-tools intltool xsltproc
    sudo apt-get install -y gperf libglib2.0-dev libgirepository1.0-dev
    sudo apt-get install -y gobject-introspection
    sudo apt-get install -y python2.7-dev python-dev bridge-utils
    sudo apt-get install -y uml-utilities net-tools
    sudo apt-get install -y libattr1-dev libcap-dev
    sudo apt-get install -y kpartx libsdl2-dev libsdl1.2-dev
    sudo apt-get install -y debootstrap libarchive-tools
    sudo apt-get install -y libelf-dev gcc-multilib g++-multilib
    sudo apt-get install -y libcap-ng-dev binutils-dev
    sudo apt-get install -y libmount-dev libselinux1-dev libffi-dev libpulse-dev
    sudo apt-get install -y liblzma-dev libssl-dev
    sudo apt-get install -y libnuma-dev libnuma1 ninja-build
    sudo apt-get install -y libtool libsysfs-dev
    sudo apt-get install -y libtool libmpc-dev
    sudo apt-get install -y doxygen
    sudo apt-get install -y gcc-7 g++-7
    sudo apt-get install -y lib32z1 lib32z1-dev libc6:i386
    sudo apt-get install -y e2fsprogs 
    sudo apt-get install -y mtd-utils
    sudo apt-get install -y squashfs-tools
    sudo apt-get install -y btrfs-progs
    sudo apt-get install -y reiserfsprogs
    sudo apt-get install -y jfsutils 
    sudo apt-get install -y xfsprogs
    sudo apt-get install -y gfs2-utils
    sudo apt-get install -y f2fs-tools
}

APT_UBUNTU16_18() {
    sudo apt-get update
    sudo apt-get install -y qemu gcc make gdb git figlet
    sudo apt-get install -y libncurses5-dev iasl wget
    sudo apt-get install -y device-tree-compiler
    sudo apt-get install -y flex bison lbssl-dev libglib2.0-dev
    sudo apt-get install -y libfdt-dev libpixman-1-dev
    sudo apt-get install -y python pkg-config u-boot-tools intltool xsltproc
    sudo apt-get install -y gperf libglib2.0-dev libgirepository1.0-dev
    sudo apt-get install -y gobject-introspection
    sudo apt-get install -y python2.7-dev python-dev bridge-utils
    sudo apt-get install -y uml-utilities net-tools
    sudo apt-get install -y libattr1-dev libcap-dev
    sudo apt-get install -y kpartx libsdl2-dev libsdl1.2-dev
    sudo apt-get install -y debootstrap bsdtar libssl-dev
    sudo apt-get install -y libelf-dev gcc-multilib g++-multilib
    sudo apt-get install -y libcap-ng-dev binutils-dev
    sudo apt-get install -y libmount-dev libselinux1-dev libffi-dev libpulse-dev
    sudo apt-get install -y liblzma-dev python-serial
    sudo apt-get install -y libnuma-dev libnuma1 ninja-build
    sudo apt-get install -y libtool libsysfs-dev libasan
    sudo apt-get install -y doxygen
    sudo apt-get install -y e2fsprogs 
    sudo apt-get install -y mtd-utils
    sudo apt-get install -y squashfs-tools
    sudo apt-get install -y btrfs-progs
    sudo apt-get install -y reiserfsprogs
    sudo apt-get install -y jfsutils 
    sudo apt-get install -y xfsprogs
    sudo apt-get install -y gfs2-utils
    sudo apt-get install -y f2fs-tools
}

[ ${RELEASE_DISTRO} = "debian" ] && echo "Don't Support Debian" && exit -1
[ ${RELEASE_DISTRO} = "CentOS" ] && echo "Don't Support CentOS" && exit -1
[ ${RELEASE_DISTRO} = "Unknown" ] && echo "Don't Support Unknown" && exit -1

case ${UBUNTU_VERSION%%.*} in
	22)
		echo "Support Ubuntu 22.X"
		APT_UBUNTU22X04
		;;
	20)
		echo "Support Ubuntu 20.X"
		APT_UBUNTU20X04
		;;
	18)
		echo "Support Ubuntu 18.X"
		APT_UBUNTU16_18
		;;
	16)
		echo "Support Ubuntu 16.X"
		APT_UBUNTU16_18
		;;
esac

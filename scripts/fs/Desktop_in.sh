#!/bin/bash

set -e

# Root Dirent
ROOT=${1%X}
# Download Direct
DL=${ROOT}/dl
# Project
PROJECT=${9%X}
# Output dirent
OUTPUT=${ROOT}/output/${PROJECT}
# Rootfs
ROOTFS=${OUTPUT}/rootfs/rootfs
# Temp direct
TEMP=${OUTPUT}/tmpdir
# ROOTFS Version
ROOTFS_VERSION=${3%X}
# Kernel Version
KERNEL_VERSION=${7%X}
# Cross Copmile
CROSS_COMPILE=${12%X}
# UBOOT
UBOOT=${15%X}
# UBOOT Compile
UBOOT_COMPILE=${16%X}
# Package
PACKAGE=
# Method
METHOD=
# TAR-package
TARBALL=
# ROOTFS-NAME
ROOTFS_NAME=${2%X}
# Architecture Magic
ARCH_MAGIC=${11%X}
# Disk Size
DISK_SIZE=${17%X}
# Freeze Disk size
FREEZE_SIZE=${18%X}
# Only Running 
SUPPORT_ONLYRUN=${19%X}
# Rootfs Type
ROOTFS_TYPE=${20%X}

SUPPORT_DESKTOP=N
SUPPORT_SERVER=N
SUPPORT_DOCKER=N
[ ${ROOTFS_TYPE} = "Desktop" ] && SUPPORT_DESKTOP=Y
[ ${ROOTFS_TYPE} = "Docker" ]  && SUPPORT_DOCKER=Y
[ ${ROOTFS_TYPE} = "Server" ]  && SUPPORT_SERVER=Y

[ ${ARCH_MAGIC} -eq 2 ] && ARCH=armel
[ ${ARCH_MAGIC} -eq 3 ] && ARCH=arm64
DISTRO=buster

# Auto-Generate README.md
do_README()
{
	README_SC=${ROOT}/scripts/rootfs/readme.sh 
	${README_SC} ${ROOT}X ${ROOTFS_NAME}X ${ROOTFS_VERSION}X \
		$4X $5X $6X ${KERNEL_VERSION}X $8X ${PROJECT}X ${10}X \
		${ARCH_MAGIC}X ${CROSS_COMPILE}X ${13}X ${14}X \
		${UBOOT}X ${UBOOT_COMPILE}X \
		${FREEZE_SIZE}X ${DISK_SIZE}X ${SUPPORT_ONLYRUN}X \
		${ROOTFS_TYPE}X

	## Output directory
	echo ""
	[ "${BS_SILENCE}X" != "trueX" ] && figlet BiscuitOS
	echo "***********************************************"
	echo "Output:"
	echo -e "\033[31m ${OUTPUT} \033[0m"
	echo ""
	echo "linux:"
	echo -e "\033[31m ${OUTPUT}/linux/linux \033[0m"
	echo ""
	echo "README:"
	echo -e "\033[31m ${OUTPUT}/README.md \033[0m"
	echo ""
	echo "Blog:"
	echo -e "\033[31m https://biscuitos.github.io/blog/BiscuitOS_Catalogue/ \033[0m"
	echo ""
	echo "***********************************************"

}

do_freeze()
{
	FREEZE_DISK=Freeze.img
	FREEZE_SIZE=${18%X}
	[ ! ${FREEZE_SIZE} ] && FREEZE_SIZE=512
	if [ ! -f ${OUTPUT}/${FREEZE_DISK} ]; then
		dd bs=1M count=${FREEZE_SIZE} if=/dev/zero of=${OUTPUT}/${FREEZE_DISK}
		sync
		mkfs.ext4 -F ${OUTPUT}/${FREEZE_DISK}
	fi
}

# Build basic ENV
prepare()
{
	[ ${SUPPORT_ONLYRUN} = "Y" ] && do_freeze && do_README && exit 0
	[ -f ${DL}/${PACKAGE}.${ROOTFS_TYPE}.bsp ] && do_README && exit 0
	[ ! -d ${DL} ] && mkdir -p ${DL}
	[ -d ${TEMP} ] && sudo rm -rf ${TEMP}

	mkdir -p ${ROOTFS}
	mkdir -p ${TEMP}
}

# Build basic rootfs via debootstrap
debootstrap_rootfs()
{
	dist=$1
	tgz=$(readlink -f $2)

	[ -f ${DL}/${tgz} ] && return 0
	[ ! -d ${TEMP} ] && exit -1
	cd ${TEMP}

	debian_archive_keyring_deb='http://httpredir.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2019.1_all.deb'
	[ ! -f ${DL}/keyring.deb ] && wget -O ${DL}/keyring.deb "$debian_archive_keyring_deb"
	cp ${DL}/keyring.deb ${TEMP}
	ar -x keyring.deb && rm -f control.tar.xz debian-binary && rm -f keyring.deb
	DATA=$(ls data.tar.*) && compress=${DATA#data.tar.}
	KR=debian-archive-keyring.gpg
	bsdtar --include ./usr/share/keyrings/$KR --strip-components 4 -xvf "$DATA"
	sudo apt-get -y install debootstrap qemu-user-static bsdtar
	sudo qemu-debootstrap --arch=${ARCH} --keyring=${TEMP}/${KR} ${dist} ${dist} http://ftp.debian.org/debian/

	rm -rf ${TEMP}/${KR}
	# keeping things clean as this is copied later again
	[ ${ARCH} == arm64 ] && sudo rm -rf ${dist}/usr/bin/qemu-aarch64-static
	[ ${ARCH} == armel ] && sudo rm -rf ${dist}/usr/bin/qemu-arm-static

	sudo bsdtar -C ${dist} -a -cf $tgz .
	sudo chown ${USER}.${USER} $tgz
	sudo rm -rf ${dist}
	cd - > /dev/null 2>&1
}

# ADD debian source list
add_debian_apt_sources()
{
	local release="$1"
	local aptsrcfile="${ROOTFS}/etc/apt/sources.list"
cat > "$aptsrcfile" <<EOF
deb http://deb.debian.org/debian ${release} main contrib non-free
deb-src http://deb.debian.org/debian ${release} main contrib non-free
deb http://security.debian.org/debian-security ${release}/updates main contrib
deb-src http://security.debian.org/debian-security ${release}/updates main contrib
EOF
if [ ${SUPPORT_DOCKER} = "Y" ]; then
	echo "deb https://download.docker.com/linux/debian ${release} stable" >> ${aptsrcfile}
fi
}

do_chroot() {
	cmd="$@"
	chroot "${ROOTFS}" mount -t proc proc /proc || true
	chroot "${ROOTFS}" mount -t sysfs sys /sys || true
	chroot "${ROOTFS}" $cmd
	chroot "${ROOTFS}" umount /sys
	chroot "${ROOTFS}" umount /proc
}

# Setup package
case ${DISTRO} in
	jessie|buster)
		PACKAGE=${DISTRO}-base-${ARCH}.tar.gz
		METHOD="debootstrap"
		;;
	*)
		echo "Unknow distribution: ${DISTRO}"
		exit -1
		;;
esac

# Procedure Area #
prepare

TARBALL=${DL}/$(basename ${PACKAGE})
if [ ! -e ${TARBALL} ]; then
	if [ ${METHOD}X = "debootstrapX" ]; then
		debootstrap_rootfs ${DISTRO} ${TARBALL}
	fi
fi

# Extract with BSD tar
echo -n "Extracting ......"
sudo bsdtar -xpf ${TARBALL} -C ${ROOTFS}
echo "OK"

# Add qemu emulation.
[ ${ARCH} == arm64 ] && sudo cp /usr/bin/qemu-aarch64-static "${ROOTFS}/usr/bin"
[ ${ARCH} == armel ] && sudo cp /usr/bin/qemu-arm-static "${ROOTFS}/usr/bin"

# Prevent services from starting
cat > "${ROOTFS}/usr/sbin/policy-rc.d" <<EOF
#!/bin/sh
exit 101
EOF
sudo chmod a+x "${ROOTFS}/usr/sbin/policy-rc.d"
[ ${SUPPORT_DOCKER} = "Y" ] && curl -fsSL http://download.docker.com/linux/debian/gpg > ${ROOTFS}/usr/debian.gpg

# Run stuff in new system
case ${DISTRO} in
	jessie|buster)
		DEBUSER=biscuitos
		EXTRADEBS="sudo"
		ADDPPACMD=
		DISPTOOLCMD=
		add_debian_apt_sources ${DISTRO}
		echo "root:root" | sudo chroot ${ROOTFS} chpasswd
		sudo chroot ${ROOTFS} adduser --gecos "" --disabled-password ${DEBUSER}
		sudo chroot ${ROOTFS} usermod -aG sudo ${DEBUSER}
		sudo chroot ${ROOTFS} usermod -aG tty ${DEBUSER}
		sudo chroot ${ROOTFS} usermod -aG dialout ${DEBUSER}
		echo "${DEBUSER}:root" | sudo chroot ${ROOTFS} chpasswd
# Desktop
if [ ${SUPPORT_DESKTOP} = "Y" ]; then
		cat > "${ROOTFS}/second-phase" << EOF
#!/bin/sh
apt -y update
apt install -y nfs-common nfs-kernel-server
apt install -y net-tools
apt install -y xfce4
apt install -y network-manager-gnome
apt -y autoremove
apt clean
EOF
elif [ ${SUPPORT_SERVER} = "Y" ]; then
		cat > "${ROOTFS}/second-phase" << EOF
#!/bin/sh
apt -y update
apt install -y nfs-common nfs-kernel-server
apt install -y net-tools
apt -y autoremove
apt clean
EOF
elif [ ${SUPPORT_DOCKER} = "Y" ]; then
		cat > "${ROOTFS}/second-phase" << EOF
#!/bin/sh
apt -y update
apt install -y nfs-common nfs-kernel-server
apt install -y net-tools
echo "Install Docker"
apt install -y curl wget apt-transport-https
apt install -y ca-certificates gnupg
apt install -y software-properties-common
echo "Install Docker.io"
cat /usr/debian.gpg | apt-key add -
apt-key fingerprint 0EBFCD88
apt install -y docker.io docker
apt install -y docker-ce
docker pull ubuntu
apt -y autoremove
apt clean
EOF
fi
		chmod +x "${ROOTFS}/second-phase"
		do_chroot /second-phase


cat > "${ROOTFS}/etc/network/interfaces.d/eth0" <<EOF
auto eth0
iface eth0 inet dhcp
EOF
cat > "${ROOTFS}/etc/hostname" <<EOF
BiscuitOS
EOF
cat > "${ROOTFS}/etc/hosts" <<EOF
127.0.0.1 localhost
127.0.1.1 BiscuitOS

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOF

### fstab
RC=${ROOTFS}/etc/fstab
## Auto create fstab file
cat << EOF > ${RC}
proc /proc proc defaults 0 0
tmpfs /tmp tmpfs defaults 0 0
sysfs /sys sysfs defaults 0 0
tmpfs /dev tmpfs defaults 0 0
debugfs /sys/kernel/debug debugfs defaults 0 0
EOF
chmod 664 ${RC}

RC=${ROOTFS}/etc/issue.txt
## Auto create issue file
echo '' >> ${RC}
echo ' ____  _                _ _    ___  ____' >> ${RC}
echo '| __ )(_)___  ___ _   _(_) |_ / _ \\/ ___|' >> ${RC}
echo '|  _ \\| / __|/ __| | | | | __| | | \\___ \\' >> ${RC}
echo '| |_) | \\__ \\ (__| |_| | | |_| |_| |___) |' >> ${RC}
echo '|____/|_|___/\\___|\\__,_|_|\\__|\\___/|____/' >> ${RC}
echo '' >> ${RC}


#RC=${ROOTFS}/etc/systemd/system/network-online.target.wants/networking.service

RC=${ROOTFS}/etc/network/interfaces
cat << EOF > ${RC}
# interfaces(5) file used by ifup(8) and ifdown(8)
# Include files from /etc/network/interfaces.d:
source-directory /etc/network/interfaces.d

auto eth0
iface lo inet loopback
allow-hotplug eth0
iface eth0 inet static
address 172.88.1.6
netmask 255.255.255.0
gateway 172.88.1.1
EOF

cat > "${ROOTFS}/etc/systemd/system/ssh-keygen.service" <<EOF
[Unit]
Description=Generate SSH keys if not there
Before=ssh.service
ConditionPathExists=|!/etc/ssh/ssh_host_key
ConditionPathExists=|!/etc/ssh/ssh_host_key.pub
ConditionPathExists=|!/etc/ssh/ssh_host_rsa_key
ConditionPathExists=|!/etc/ssh/ssh_host_rsa_key.pub
ConditionPathExists=|!/etc/ssh/ssh_host_dsa_key
ConditionPathExists=|!/etc/ssh/ssh_host_dsa_key.pub
ConditionPathExists=|!/etc/ssh/ssh_host_ecdsa_key
ConditionPathExists=|!/etc/ssh/ssh_host_ecdsa_key.pub
ConditionPathExists=|!/etc/ssh/ssh_host_ed25519_key
ConditionPathExists=|!/etc/ssh/ssh_host_ed25519_key.pub

[Service]
ExecStart=/usr/bin/ssh-keygen -A
Type=oneshot
RemainAfterExit=yes

[Install]
WantedBy=ssh.service
EOF
do_chroot systemctl enable ssh-keygen

cat > "${ROOTFS}/etc/udev/rules.d/90-sunxi-disp-permission.rules" <<EOF
KERNEL=="disp", MODE="0770", GROUP="video"
KERNEL=="cedar_dev", MODE="0770", GROUP="video"
KERNEL=="ion", MODE="0770", GROUP="video"
KERNEL=="mali", MODE="0770", GROUP="video"
EOF

RC=${ROOTFS}/etc/resolv.conf
cat << EOF > ${RC}
nameserver 1.2.4.8
nameserver 8.8.8.8
EOF

		sed -i 's|After=rc.local.service|#\0|;' "${ROOTFS}/lib/systemd/system/serial-getty@.service"
		rm -f "${ROOTFS}"/etc/ssh/ssh_host_*
		#do_chroot ln -s /run/resolvconf/resolv.conf /etc/resolv.conf
		;;

esac

# Network
RC=${ROOTFS}/etc/systemd/system/network-online.target.wants/networking.service
## Auto create Network
echo '[Unit]' >> ${RC}
echo 'Description=Raise network interfaces' >> ${RC}
echo 'Documentation=man:interfaces(5)' >> ${RC}
echo 'DefaultDependencies=no' >> ${RC}
echo 'Requires=ifupdown-pre.service' >> ${RC}
echo 'Wants=network.target' >> ${RC}
echo 'After=local-fs.target network-pre.target apparmor.service systemd-sysctl.service systemd-modules-load.service ifupdown-pre.service' >> ${RC}
echo 'Before=network.target shutdown.target network-online.target' >> ${RC}
echo 'Conflicts=shutdown.target' >> ${RC}
echo '' >> ${RC}
echo '[Install]' >> ${RC}
echo 'WantedBy=multi-user.target' >> ${RC}
echo 'WantedBy=network-online.target' >> ${RC}
echo '' >> ${RC}
echo '[Service]' >> ${RC}
echo 'Type=oneshot' >> ${RC}
echo 'EnvironmentFile=-/etc/default/networking' >> ${RC}
echo 'ExecStart=/sbin/ifup -a --read-environment' >> ${RC}
echo 'ExecStop=/sbin/ifdown -a --read-environment --exclude=lo' >> ${RC}
echo 'RemainAfterExit=true' >> ${RC}
echo 'TimeoutStartSec=2sec' >> ${RC}

# Bring back folders
mkdir -p "${ROOTFS}/lib"
mkdir -p "${ROOTFS}/usr"

if [ ${SUPPORT_DESKTOP} = "Y" ]; then
	# Backgroud
	wget https://gitee.com/BiscuitOS_team/PictureSet/raw/Gitee/BiscuitOS/Desktop/BiscuitOS_Desktop_0001.png
	sudo mv BiscuitOS_Desktop_0001.png ${ROOTFS}/usr/share/images/desktop-base/
	wget https://gitee.com/BiscuitOS_team/PictureSet/raw/Gitee/BiscuitOS/Desktop/BiscuitOS_login0.png
	sudo mv BiscuitOS_login0.png ${ROOTFS}/usr/share/images/desktop-base/
	MF=${ROOTFS}/etc/lightdm/lightdm-gtk-greeter.conf
	echo 'background=/usr/share/images/desktop-base/BiscuitOS_login0.png' >> ${MF}
fi


# Cleanup
rm -f "${ROOTFS}/usr/bin/qemu-aarch64-static"
rm -f "${ROOTFS}/usr/sbin/policy-rc.d"

# Zip/Tar
bsdtar -C ${ROOTFS} -a -cf ${DL}/$(basename ${PACKAGE}).${ROOTFS_TYPE}.bsp .

echo "$(basename ${PACKAGE}).${ROOTFS_TYPE}.bsp  Build OK ...."
echo "Install ${DL}/$(basename ${PACKAGE}).${ROOTFS_TYPE}.bsp"
do_README

[BiscuitOS](https://biscuitos.github.io/)                                   
----------------------------------------------

[](https://imgtu.com/i/jIUFij)

BiscuitOS is a Linux-Distro that base on legacy or newest Linux kernel (such as Linux 0.11, 1.x, 2.x, 3.x, 4.x, 5.x 6.x and more).  BiscuitOS is an open and free operating system that  developers can use under the GNU General Public License.

The target of BiscuitOS is to create an operating system debugging and running environment that makes developers focus on `CODE` and doesn't waste time on how to build or port an operating system to different hardware. 

This project is named BiscuitOS that is a specific builtroot for BiscuitOS. All developers can configure various kernel/rootfs features and create a full harddisk-image. The BiscuitOS works on Intel-x86 family CPU (such as i386, i486 ...)/ ARM32 or ARM64, and the project offers an emulate to run BiscuitOS without hardware. So, don't stop, and play Linux with BiscuitOS. 

## 1. To Prepare

#### 1.1 Deploy BiscuitOS on Docker

BiscuitOS support to build on host and Docker, if you want to build on Docker, running the commands below:

```
wget https://raw.githubusercontent.com/BiscuitOS/BiscuitOS/Stable_long/scripts/Docker/build.sh
./build.sh
```

#### 1.2 Deploy BiscuitOS on Ubuntu 

If you don't want to use Docker, Before the tour, you need to install essential toolchains on the host PC (such as `Ubuntu16.04`). Execute commands:

###### 1.2.1 Ubuntu16.X/18.X

```
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
```

###### 1.2.2 Ubuntu 20.X

```
#### Add GCC sourcelist
vi /etc/apt/sources.list
+ deb [arch=amd64] http://archive.ubuntu.com/ubuntu focal main universe

sudo apt-get update
sudo apt-get install -y qemu gcc make gdb git figlet
sudo apt-get install -y libncurses5-dev iasl wget
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

GCC must be GCC-7, change default GCC as:

sudo apt-get update
sudo apt-get install -y gcc-7 g++-7
sudo update-alternatives --remove-all gcc
sudo update-alternatives --remove-all g++
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 20
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 20
#### Choose GCC-7 and G++-7
sudo update-alternatives --config gcc
sudo update-alternatives --config g++
```

###### 1.2.3 Ubuntu 22.X

```
#### Add GCC sourcelist
vi /etc/apt/sources.list
+ deb [arch=amd64] http://archive.ubuntu.com/ubuntu focal main universe

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
sudo ln -s /usr/bin/python3 /usr/bin/python

GCC must be GCC-7, change default GCC as:

sudo apt-get update
sudo apt-get install -y gcc-7 g++-7
sudo update-alternatives --remove-all gcc
sudo update-alternatives --remove-all g++
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 20
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 20
#### Choose GCC-7 and G++-7
sudo update-alternatives --config gcc
sudo update-alternatives --config g++
```

#### 1.3 Common Setup

On AMD64 Machine, we need be compatible IA32 library and runtime, add command:


```
sudo apt-get install lib32z1 lib32z1-dev libc6:i386
```
  
**NOTE!**

If It is the first time you use git, please configure git as below
 
```
git config --global user.name "Your Name"
git config --global user.email "Your Email"
```

## 2. To Start

First of all, You need to obtain the source code of BiscuitOS from GitHub, follow these steps to get the newest and stable branch. The BiscuitOS project will help you easily to build a customization-BiscuitOS.

```
git clone https://github.com/BiscuitOS/BiscuitOS.git
```

Next step, we need to build BiscuitOS with common Kbuild syntax. The `BiscuitOS` support multiple kernel version and filesystem types, you can configure `BiscuitOS` as you wish. The Kbuild will help you easily to build all software and kernel. So utilize commands on your terminal:

```
cd */BiscuitOS
make defconfig
make
```

Then, the BiscuitOS will auto-compile and generate a distro-Linux, more useful information will be generated. Check README.md which determines how to use it. as follow:

```
 ____  _                _ _    ___  ____  
| __ )(_)___  ___ _   _(_) |_ / _ \/ ___| 
|  _ \| / __|/ __| | | | | __| | | \___ \ 
| |_) | \__ \ (__| |_| | | |_| |_| |___) |
|____/|_|___/\___|\__,_|_|\__|\___/|____/ 
                                          
***********************************************
Output:
 */BiscuitOS/output/linux-x.x.x 

linux:
 */BiscuitOS/output/linux-x.x.x/linux/linux 

README:
 */BiscuitOS/output/linux-x.x.x/README.md 

***********************************************
```

## 3. Silence information

```
export BS_SILENCE=true
```

## 4. Offical Website and Blog

[BiscuitOS Home Page](http://www.biscuitos.cn/)

[BiscuitOS Blog Index](http://www.biscuitos.cn/blog/BiscuitOS_Catalogue/)

> Email: Budhttps://imgtu.com/i/jIUFijdyZhang1 <buddy.zhang@aliyun.com>

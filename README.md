BiscuitOS                                    [中文](https://biscuitos.github.io/blog/HomePage/)
----------------------------------------------

![TOP_PIC](https://github.com/EmulateSpace/PictureSet/blob/master/github/mainmenu.jpg)

BiscuitOS is a Linux-Distro that base on legacy or newest Linux kernel (such 
as Linux 0.11, 1.x, 2.x, 3.x, 4.x, 5.x and more).  BiscuitOS is an open 
and free operating system that  developers can use under the GNU General Public 
License.

The target of BiscuitOS is to create an operating system debugging and 
running environment that makes developers focus on `CODE` and doesn't
waste time on how to build or port an operating system to different 
hardware. 

This project is named BiscuitOS that is a specific builtroot for BiscuitOS.
All developers can configure various kernel/rootfs features and create a
full harddisk-image. The BiscuitOS works on Intel-x86 family CPU (such
as i386, i486 ...)/ ARM32 or ARM64, and the project offers an emulate to run 
BiscuitOS without hardware. So, don't stop, and play Linux with BiscuitOS. 

## To Prepare

BiscuitOS support to build on host and Docker, if you want to build on Docker,
running the commands below:

```
wget https://raw.githubusercontent.com/BiscuitOS/BiscuitOS/Stable_long/scripts/Docker/build.sh
./build.sh
```

If you don't want to use Docker, Before the tour, you need to install 
essential toolchains on the host PC (such as `Ubuntu16.04`). 
Execute commands:

```
# Ubuntu16.X/18.X

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
sudo apt-get install -y debootstrap bsdtar
sudo apt-get install -y libelf-dev gcc-multilib g++-multilib
sudo apt-get install -y libcap-ng-dev
sudo apt-get install -y libmount-dev libselinux1-dev libffi-dev libpulse-dev
sudo apt-get install -y liblzma-dev python-serial
sudo apt-get install -y libnuma-dev libnuma1 ninja-build
sudo apt-get install -y libtool libsysfs-dev libasan

-----------------------------------------
# Ubuntu 20.X/22.X

#### Add GCC sourcelist
vi /etc/apt/sources.list
+ deb [arch=amd64] http://archive.ubuntu.com/ubuntu focal main universe

sudo apt-get update
sudo apt-get install -y qemu gcc make gdb git figlet
sudo apt-get install -y libncurses5-dev iasl wget
sudo apt-get install -y device-tree-compiler build-essential
sudo apt-get install -y flex bison libssl-dev libglib2.0-dev
sudo apt-get install -y libfdt-dev libpixman-1-dev
sudo apt-get install -y python3 pkg-config u-boot-tools intltool xsltproc
sudo apt-get install -y gperf libglib2.0-dev libgirepository1.0-dev
sudo apt-get install -y gobject-introspection
sudo apt-get install -y python3-dev bridge-utils
sudo apt-get install -y net-tools
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
```

On Ubuntu 22.04, GCC must be GCC-7, change default GCC as:

```
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

## To Start
First of all, You need to obtain the source code of BiscuitOS from GitHub, 
follow these steps to get the newest and stable branch. The BiscuitOS
project will help you easily to build a customization-BiscuitOS.

```
git clone https://github.com/BiscuitOS/BiscuitOS.git
```

Next step, we need to build BiscuitOS with common Kbuild syntax.
The `BiscuitOS` support multiple kernel version and filesystem types, you
can configure `BiscuitOS` as you wish. The Kbuild will help you easily 
to build all software and kernel. So utilize commands on your terminal:

```
cd */BiscuitOS
make defconfig
make
```

Then, the BiscuitOS will auto-compile and generate a distro-Linux, more useful
information will be generated. Check README.md which determines how to use it.
as follow:

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

## Silence information

```
export BS_SILENCE=true
```

## Offical Website and Blog

[BiscuitOS Home Page](https://biscuitos.github.io/)

[BiscuitOS Blog Index](https://biscuitos.github.io/blog/BiscuitOS_Catalogue/)

> Email: BuddyZhang1 <buddy.zhang@aliyun.com>

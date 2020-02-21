BiscuitOS                                    [中文](https://biscuitos.github.io/blog/HomePage/)
----------------------------------------------

![TOP_PIC](https://github.com/EmulateSpace/PictureSet/blob/master/github/mainmenu.jpg)

BiscuitOS is a linux-Distro that base on legacy or newest linux kernel (such 
as linux 0.11, 1.x, 2.x, 3.x, 4.x, 5.x and more new). And BiscuitOS is a open 
and free operating system, development can use it under the GNU General Public 
License.

The target of BiscuitOS is creating an operating system debugging and 
running environment that make developer focus on `CODE` and don't
waste time on how to build and porting an operating system on different 
hardware. 

This project named BiscuitOS which is a specific builtroot for BiscuitOS.
All developers can configure various kernel/rootfs feature and create a
full hardisk-image. The BiscuitOS works on Intel-x86 family CPU (such
as i386, i486 ...)/ ARM32 or ARM64, and project offers a emulate to run 
BiscuitOS without hardware. So, don't stop, play Linux with BiscuitOS. 

## To Prepare

BiscuitOS support build on host or Docker, if you want build on docker,
such as:

```
wget https://raw.githubusercontent.com/BiscuitOS/BiscuitOS/Stable_long/scripts/Docker/build.sh
./build.sh
```

If you want not use Docker, Before your tour, you need install 
essential toolchain on host PC (such as `Ubuntu16.04`). Execute command:

```
sudo apt-get install -y qemu gcc make gdb git figlet
sudo apt-get install -y libncurses5-dev iasl wget
sudo apt-get install -y device-tree-compiler
sudo apt-get install -y flex bison libssl-dev libglib2.0-dev
sudo apt-get install -y libfdt-dev libpixman-1-dev
sudo apt-get install -y python pkg-config u-boot-tools intltool xsltproc
sudo apt-get install -y gperf libglib2.0-dev libgirepository1.0-dev
sudo apt-get install -y gobject-introspection
sudo apt-get install -y python2.7-dev python-dev bridge-utils
sudo apt-get install -y uml-utilities net-tools
sudo apt-get install -y libattr1-dev libcap-dev
sudo apt-get install -y kpartx libsdl2-dev libsdl1.2-dev
sudo apt-get install -y debootstrap bsdtar
sudo apt-get install -y libelf-dev

On 64-Bit Machine:

sudo apt-get install lib32z1 lib32z1-dev libc6:i386
```
  
**NOTE!**

If you first install or use git, please configure git as follow
 
```
git config --global user.name "Your Name"
git config --global user.email "Your Email"
```

## To Start

First of all, You need obtain source code of BiscuitOS from GitHub, 
follow these steps to get newest and stable branch. The BiscuitOS
project will help you easily to build a customization-BiscuitOS.

```
git clone https://github.com/BiscuitOS/BiscuitOS.git
```

The next step, we need to build BiscuitOS with common Kbuild syntax.
The `BiscuitOS` support multiple kernel version and filesystem type, you
can configure `BiscuitOS` like you do. The Kbuild will help you easily 
to build all software and kernel. So utilise command on your terminal:

```
cd */BiscuitOS
make defconfig
make
```

Then, the BiscuitOS will auto-compile and generate a distro-Linux, more useful
information will be generated. Check README.md which determine how to use it.
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

[BiscuitOS Establish More distro-Linux](https://biscuitos.github.io/blog/Kernel_Build/)

[BiscuitOS Blog Index](https://biscuitos.github.io/blog/BiscuitOS_Catalogue/)

> Email: BuddyZhang1 <buddy.zhang@aliyun.com>

[BiscuitOS](https://biscuitos.github.io/)                                   
----------------------------------------------

![jIUFij.md.jpg](https://s1.ax1x.com/2022/07/17/jIUFij.md.jpg)

BiscuitOS is a Linux-Distro that base on legacy or newest Linux kernel (such as Linux 0.11, 1.x, 2.x, 3.x, 4.x, 5.x 6.x and more).  BiscuitOS is an open and free operating system that  developers can use under the GNU General Public License.

The target of BiscuitOS is to create an operating system debugging and running environment that makes developers focus on `CODE` and doesn't waste time on how to build or port an operating system to different hardware. 

This project is named BiscuitOS that is a specific builtroot for BiscuitOS. All developers can configure various kernel/rootfs features and create a full harddisk-image. The BiscuitOS works on Intel-x86 family CPU (such as i386, i486 ...)/ ARM32 or ARM64, and the project offers an emulate to run BiscuitOS without hardware. So, don't stop, and play Linux with BiscuitOS. 

## 1. To Prepare

At first, Install basic toolchain, such as Ubuntu or Centos:

```
# Ubuntu/Debian
sudo apt-get update
sudo apt-get install git make figlet gawk flex bison
# CentOS
yum update
# ArchLinux

```

## 2. Donwload Project

Download BiscuitOS Source Code from Github/Gitee:

```
git clone https://github.com/BiscuitOS/BiscuitOS.git --depth=1
or
git clone https://gitee.com/BiscuitOS_team/BiscuitOS.git --depth=1
```

And then change direct into BiscuitOS, install full toolchains:

```
make defconfig
make install
```

## 3. To Start

Simple to Start BiscuitOS, e.g. linux 0.11:

```
cd */BiscuitOS
make linux-0.11_defconfig
make
```

Then, Output README.md information, See README.md and follow command to build, e.g.

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

![ppfCyEd.md.png](https://s1.ax1x.com/2023/04/02/ppfCyEd.md.png)

## 4. Silence information

```
export BS_SILENCE=true
```

## 4. Offical Website and Blog

[BiscuitOS Home Page](http://www.biscuitos.cn/)

[BiscuitOS Blog Index](http://www.biscuitos.cn/blog/BiscuitOS_Catalogue/)

> Email: BuddyZhang1 <buddy.zhang@aliyun.com>

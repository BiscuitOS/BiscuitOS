BiscuitOS                                    [中文](https://biscuitos.github.io/blog/HomePage/)
----------------------------------------------

![TOP_PIC](https://github.com/EmulateSpace/PictureSet/blob/master/github/mainmenu.jpg)

BiscuitOS is a linux-Distro that base on legacy linux kernel (such as
linux 0.11, 0.12, 0.95, 0.96, 0.97, 0.98, 0.99, 1.0.1 and more new).
And BiscuitOS is a open and free operating system, development can use
it under the GNU General Public License.

The target of BiscuitOS is creating an operating system debugging and 
running environment that make developer focus on `CODE` and don't
waste time on how to build and porting an operating system on different 
hardware. 

This project named BiscuitOS that is a specific builtroot for BiscuitOS.
All developers can configure various kernel/rootfs feature and create
full hardisk-image. The BiscuitOS works on Intel-x86 family CPU (such
as i386, i486 ...) and project offers a emulate to run BiscuitOS without
hardware. So, don't stop, play Linux with BiscuitOS. 

## To Prepare

  Before your tour, you need install essential toolchain on host PC (
  such as `Ubuntu16.04`). Execute command:

  ```
    sudo apt-get install -y qemu gcc make gdb git figlet
    sudo apt-get install -y libncurses5-dev iasl
    sudo apt-get install -y device-tree-compiler
    sudo apt-get install -y flex bison libssl-dev libglib2.0-dev 
    sudo apt-get install -y libfdt-dev libpixman-1-dev

    On 64bit machine:
    sudo apt-get install lib32z1 lib32z1-dev
  ```
  
  **NOTE!**

  If you first install or use git, please configure git as follow
 
  ```
    git config --global user.name "Your Name"
    git config --global user.email "Your Email"
  ```

## To Start

  First of all, You need obtain source code of BiscuitOS from github, 
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
    make linux_1_0_1_defconfig
    make
  ```

  The Kbuild stores various configure for BiscuitOS, developer can choise
  it which you like. The Table show default-configure for various kernel:

  |          defconfig          |              Describe              |
  | --------------------------- | ---------------------------------- | 
  | linux_0_11_defconfig        |   Linux 0.11 kernel                |
  | linux_0_12_defconfig        |   Linux 0.12 kernel                |
  | linux_0_95_3_defconfig      |   Linux 0.95.3 kernel              |
  | linux_0_95a_defconfig       |   Linux 0.95a kernel               |
  | linux_0_96_1_defconfig      |   Linux 0.96.1 kernel              |
  | linux_0_97_1_defconfig      |   Linux 0.97.1 kernel              |
  | linux_0_98_1_defconfig      |   Linux 0.98.1 kernel              |
  | linux_0_99_1_defconfig      |   Linux 0.99.1 kernel              |
  | linux_1_0_1_defconfig       |   Linux 1.0.1 kernel               |
  | linux_1_0_1_1_minix_defconfig  | Linux 1.0.1.1 minix-fs kernel   |
  | linux_1_0_1_1_ext2_defconfig   | Linux 1.0.1.1 ext2-fs kernel    |
  | linux_1_0_1_2_minix_defconfig  | Linux 1.0.1.2 minix-fs kernel   |
  | linux_1_0_1_2_ext2_defconfig   | Linux 1.0.1.2 ext2-fs kernel    |

  So, you can choise to build another kernel as follow:

  To build 0.98.1 kernel

  ```
    cd */BiscuitOS
    make linux_0_98_1_defconfig
    make clean
    make
  ```
  To build 0.96.1 kernel

  ```
    cd  */BiscuitOS
    make linux_0_96_1_defconfig
    make clean
    make 
  ```

## Running BiscuitOS

  When you succeed to build BiscuitOS from source code, maybe you 
  should think how to run BiscuitOS (Buy a Intel-i386 develop board? it's
  not well!). So we can utilise emulate tools to run BiscuitOS, such as
  `qemu` or `bochsrc` and so on. On default configure, we have support
  running BiscuitOS on qemu, and you should only input simple command,
  for example:

  ```
    cd */BiscuitOS/kernel/linux_{your choice kernel version}
    make start
  ```

  ![Running1.0.1.1 ext2](https://raw.githubusercontent.com/EmulateSpace/PictureSet/master/BiscuitOS/buildroot/V000019.png)
  
  Congratulation :-) You have running a legacy linux (it create from 1991s 
  :-). So it's easy to build these for you! and go on happy tour!

  The kernel of BiscuitOS is established on Kbuild, so you can utilize
  Kbuild syntax to configure kernel, it's very easy as follow:

  ```
    cd */BiscuitOS/kernel/linux_{your choice kernel version}
    make menuconfig
    make
    make start
  ```

  ![Menuconfig1.0.1.1 ext2](https://raw.githubusercontent.com/EmulateSpace/PictureSet/master/BiscuitOS/buildroot/V000020.png)

  
## Offical Website and Blog

  The BiscuitOS offical Website:

  
  > https://biscuitos.github.io/
  

  The BiscuitOS Blog

  > https://biscuitos.github.io/blog/

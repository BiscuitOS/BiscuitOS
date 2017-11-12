BiscuitOS
----------------------------------------------

BiscuitOS is a Unix-like computer operating system that is composed entirely
of free software, most of which is under the GNU General Public License 
and packaged by a group of individuals participating in the BiscuitOS Project.
As one of the earliest operating systems based on the Linux kernel 0.11, 
it was decided that BiscuitOS was to be developed openly and freely 
distributed in the spirit of the GNU Project. 

While all BiscuitOS releases are derived from the GNU Operating System 
and use the GNU userland and the GNU C library (glibc), other kernels 
aside from the Linux kernel are also available, such as those based on 
BSD kernels and the GNU Hurd microkernel.

## Hello World

  First of all, You need get source code of BiscuitOS from github, 
  follow these steps to get newest and stable branch. The BiscuitOS
  project will help you easy to build a customization-BiscuitOS.

  ```
    git clone https://github.com/BiscuitOS/BiscuitOS.git
  ```

  The next step, we need to build BiscuitOS with common Kbuild syntax.
  The Kbuild will help you easy to built all software and kernel. So
  utilise this command on your terminal.

  ```
    cd */BiscuitOS
    make defconfig
    make
  ```

  When you succeed to pass build BiscuitOS from source code, maybe you 
  should think how to run BiscuitOS (Buy a Intel-i386 develop board? it's
  not well!). So we can utilise emulate tools to run BiscuitOS, such as
  `qemu` or `bochsrc` and so on. On default configure, we have support
  running BiscuitOS on qemu, and you should only input simple command,
  for example:

  ```
    make start
  ```
  
  Because BiscuitOS project is written on Kbuild syntax, so U can use Kbuild 
  syntax to add/delete or configure your owner customization-BiscuitOS. 
  You can utilise `make *config` to configure feature for kernel and 
  utilise various open-software. So You can utilise follow command:

  ```
    make menuconfig
  ```

#!/bin/bash

# Linux Destro Version
LINUX_DESTRO=$1
# BISCUITOS ROOT
BROOT=$(pwd)
# DEBUG_FILE
ROOT=$(pwd)/output/${LINUX_DESTRO}
# Package 
PACKAGE=${ROOT}/package
# FILE_C
FILE_C=${BROOT}/dl/MEMORY_FLUID/BiscuitOS-stub.c
# FILE_H
FILE_H=${BROOT}/dl/MEMORY_FLUID/BiscuitOS-stub.h
# FILE_U_H
FILE_U_H=BiscuitOS_memory_fluid.h
# TEMP_PATH
TEMP_PATH=${PACKAGE}/.debug_tmp
# KERNEL
KERNEL=${ROOT}/linux/linux
# C INSTALL
INSTALL_C=${KERNEL}/lib
# H INSTALL
INSTALL_H=${KERNEL}/include/linux/
# SKIP
SKIP_SYSCALL=0
SKIP_GDB=0

# LINUX VERSION
KER_VER=$(echo "${LINUX_DESTRO}" | awk -F- '{print $2}')

# PROC_INTERFACE
SUPPORT_PROC_NEW=N
KERNEL_VERSION_MAJOR=$(echo ${KER_VER} | cut -d '.' -f 1)
KERNEL_VERSION_MINOR=$(echo ${KER_VER} | cut -d '.' -f 2)
# DEFAULT 6.8
DETECT_MAJOR=6
DETECT_MINOR=8
# SUPPORT NEW VERSION
if (( KERNEL_VERSION_MAJOR  == DETECT_MAJOR && KERNEL_VERSION_MINOR > DETECT_MINOR )); then
	SUPPORT_PROC_NEW=Y
fi

mkdir -p ${BROOT}/dl/MEMORY_FLUID

# CHECK OUT
if [ -f ${KERNEL}/BiscuitOS-MEMORY-FLUID ]; then
        SKIP_SYSCALL=1
        if grep -q "QEMU-KERNEL-GDB" "${KERNEL}/BiscuitOS-MEMORY-FLUID"; then
                SKIP_GDB=1
        fi
fi

if [ ${SKIP_SYSCALL} = "0" ]; then
    # ARCHITECTURE
    if [[ "$LINUX_DESTRO" == *"i386"* ]]; then
	ARCH=i386
	MAX_SYS=$(awk '{print $1}' "${ROOT}/linux/linux/arch/x86/entry/syscalls/syscall_32.tbl" | grep '^[0-9]*$' | sort -n | tail -n 1)
	NR_SYS=$((MAX_SYS + 1))
	echo "${NR_SYS}     i386  debug_BiscuitOS         sys_debug_BiscuitOS" >> ${KERNEL}/arch/x86/entry/syscalls/syscall_32.tbl

	RC=${BROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.${LINUX_DESTRO}
    elif [[ "$LINUX_DESTRO" == *"x86_64"* ]]; then
	ARCH=x86_64
	MAX_SYS=$(awk '{print $1}' "${ROOT}/linux/linux/arch/x86/entry/syscalls/syscall_64.tbl" | grep '^[0-9]*$' | sort -n | tail -n 1)
	NR_SYS=$((MAX_SYS + 1))
	echo "${NR_SYS}     common  debug_BiscuitOS         sys_debug_BiscuitOS" >> ${KERNEL}/arch/x86/entry/syscalls/syscall_64.tbl

	RC=${BROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.${LINUX_DESTRO}
    elif [[ "$LINUX_DESTRO" == *"arm"* ]]; then
	ARCH=arm
	MAX_SYS=$(awk '{print $1}' "${ROOT}/linux/linux/arch/arm/tools/syscall.tbl" | grep '^[0-9]*$' | sort -n | tail -n 1)
	NR_SYS=$((MAX_SYS + 1))
	echo "${NR_SYS}     common  debug_BiscuitOS         sys_debug_BiscuitOS" >> ${KERNEL}/arch/arm/tools/syscall.tbl

	RC=${BROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.${LINUX_DESTRO}
    elif [[ "$LINUX_DESTRO" == *"aarch"* ]]; then
	ARCH=aarch
	SYS_FILE=${ROOT}/linux/linux/include/uapi/asm-generic/unistd.h
	NR_SYS=$(awk '/#define __NR_syscalls/ {print $3}' ${SYS_FILE})
	MAX_SYS=$((NR_SYS + 1))

	sed -i "s/#define __NR_syscalls [0-9]*/#define __NR_syscalls ${MAX_SYS}/" "${SYS_FILE}"

	line_num=$(grep -n '#undef __NR_syscalls' ${SYS_FILE} | cut -d':' -f1)
	sed -i "$((line_num-1))i __SYSCALL(__NR_debug_BiscuitOS, sys_debug_BiscuitOS)" "${SYS_FILE}"
	sed -i "$((line_num-1))i #define __NR_debug_BiscuitOS ${NR_SYS}" "${SYS_FILE}"
	sed -i "$((line_num-1))i\ " "${SYS_FILE}"

	RC=${BROOT}/dl/MEMORY_FLUID/BiscuitOS_memory_fluid.h.${LINUX_DESTRO}
    fi

    ## Header on LIBC
    echo "#ifndef _BISCUTIOS_MEMORY_FLUID_H" > ${RC}
    echo "#define _BISCUTIOS_MEMORY_FLUID_H" >> ${RC}
    echo "" >> ${RC}
    echo "#define BiscuitOS_memory_fluid_enable()         syscall(${NR_SYS}, 1)" >> ${RC}
    echo "#define BiscuitOS_memory_fluid_disable()        syscall(${NR_SYS}, 0)" >> ${RC}
    echo "" >> ${RC}
    echo "#endif" >> ${RC}
fi

## Source On Kernel
RC=${FILE_C}
cat << EOF > ${RC}
// SPDX-License-Identifier: GPL-2.0
/*
 * BiscuitOS Kernel Debug Stub
 *
 * (C) 2020.03.20 BuddyZhang1 <buddy.zhang@aliyun.com>
 * (C) 2022.04.01 BiscuitOS
 *                <https://biscuitos.github.io/blog/BiscuitOS_Catalogue/>
 */
#include <linux/kernel.h>
#include <linux/syscalls.h>
#include <linux/sysctl.h>
#include <linux/delay.h>
#include <linux/BiscuitOS-stub.h>

int bs_debug_kernel_enable;
int bs_debug_kernel_enable_one;
long bs_debug_async_data;
int bs_debug_async_data_count;
atomic_t bs_debug_wait;
static atomic_t _BiscuitOS_memory_fluid_count[BS_COUNTER_NR];
EXPORT_SYMBOL_GPL(bs_debug_async_data);
EXPORT_SYMBOL_GPL(bs_debug_async_data_count);
EXPORT_SYMBOL_GPL(bs_debug_kernel_enable);
EXPORT_SYMBOL_GPL(bs_debug_kernel_enable_one);

/* MEMORY FLUID SYSCALL */

SYSCALL_DEFINE1(debug_BiscuitOS, unsigned long, enable)
{
	if (enable == 1) {
		bs_debug_kernel_enable = 1;
		bs_debug_kernel_enable_one = 1;
	} else if (enable == 0) {
		bs_debug_kernel_enable = 0;
		bs_debug_kernel_enable_one = 0;
	} else
		bs_debug_async_data = enable;

	return 0;
}

/** MEMORY FLUID PROC INTERCACE **/

static int BiscuitOS_bs_debug_handler(struct ctl_table *table, int write,
                void __user *buffer, size_t *length, loff_t *ppos)
{
	int ret;

	ret = proc_dointvec(table, write, buffer, length, ppos);
	if (bs_debug_kernel_enable) {
		bs_debug_kernel_enable_one = 1;
		bs_debug_kernel_enable = 1;
	} else {
		bs_debug_kernel_enable_one = 0;
		bs_debug_kernel_enable = 0;
	}

	return ret;
}

static struct ctl_table BiscuitOS_table[] = {
	{
		.procname       = "BiscuitOS-MEMORY-FLUID",
		.data           = &bs_debug_kernel_enable,
		.maxlen         = sizeof(unsigned long),
		.mode           = 0644,
		.proc_handler   = BiscuitOS_bs_debug_handler,
	},
	{ }
};

EOF

if [ ${SUPPORT_PROC_NEW} = "Y" ]; then
RC=${FILE_C}
cat << EOF >> ${RC}
static int __init BiscuitOS_debug_proc(void)
{
        register_sysctl_init("BiscuitOS", BiscuitOS_table);
        return 0;
}
device_initcall(BiscuitOS_debug_proc);
EOF

else

RC=${FILE_C}
cat << EOF >> ${RC}
static struct ctl_table sysctl_BiscuitOS_table[] = {
	{
		.procname       = "BiscuitOS",
		.mode           = 0555,
		.child          = BiscuitOS_table,
	},
	{ }
};

static int __init BiscuitOS_debug_proc(void)
{
	register_sysctl_table(sysctl_BiscuitOS_table);
	return 0;
}
device_initcall(BiscuitOS_debug_proc);

EOF

fi

RC=${FILE_C}
cat << EOF >> ${RC}
/** MEMORY FLUID LOCK TOOLS **/

int BiscuitOS_memory_fluid_stop(unsigned long time)
{
	if (!is_BiscuitOS_memory_fluid_enable())
		return 0; /* SKIP */

	/* INCREAM */
	atomic_inc(&bs_debug_wait);
	/* WAITER? */
	if (atomic_read(&bs_debug_wait) == 2) {
		/* HAS WAITER */
		return 0;
	}

	mb();
	do {
		if (atomic_read(&bs_debug_wait) == 1) {
			/* DISABLE */
			BiscuitOS_memory_fluid_disable();
			/* DELAY */
			mdelay(time);
		} else {
			/* FORCE DELAY */
			mdelay(time);
			/* STOP WAIT */
			atomic_set(&bs_debug_wait, 0);
			/* ENABLE */
			BiscuitOS_memory_fluid_enable();
		}

	} while (atomic_read(&bs_debug_wait));

	return 0;
}
EXPORT_SYMBOL_GPL(BiscuitOS_memory_fluid_stop);

int BiscuitOS_memory_fluid_wait(unsigned long time)
{
	if (!is_BiscuitOS_memory_fluid_enable())
		return 0; /* SKIP */

	mdelay(time);

	return 0;
}
EXPORT_SYMBOL_GPL(BiscuitOS_memory_fluid_wait);

/** GDB ON MEMORY FLUID **/

int __attribute__((optimize("O0")))
BiscuitOS_memory_fluid_gdb_stub(void)
{
	/* MUST ENABLE CONFIG_CC_OPTIMIZE_FOR_SIZE */
	return 0;
}
EXPORT_SYMBOL_GPL(BiscuitOS_memory_fluid_gdb_stub);

int BiscuitOS_memory_fluid_gdb(void)
{
	if (is_BiscuitOS_memory_fluid_enable())
		BiscuitOS_memory_fluid_gdb_stub();

	return 0;
}
EXPORT_SYMBOL_GPL(BiscuitOS_memory_fluid_gdb);

/** MEMORY FLUID ASYNC TOOLS **/

int BiscuitOS_memory_fluid_set_async_data(unsigned long data)
{
	if (is_BiscuitOS_memory_fluid_enable()) {
		bs_debug_async_data = data;
		bs_debug_async_data_count = 0;
	}

	return 0;
}
EXPORT_SYMBOL_GPL(BiscuitOS_memory_fluid_set_async_data);

/** SKIP WHILE/FOR/LOOP **/

int BiscuitOS_memory_fluid_count(int nr)
{
	if (is_BiscuitOS_memory_fluid_enable())
		return atomic_read(&_BiscuitOS_memory_fluid_count[nr]);
	return -1;
}
EXPORT_SYMBOL_GPL(BiscuitOS_memory_fluid_count);

int BiscuitOS_memory_fluid_count_inc(int nr)
{
	if (is_BiscuitOS_memory_fluid_enable())
		return atomic_inc_return(&_BiscuitOS_memory_fluid_count[nr]);
	return -1;
}
EXPORT_SYMBOL_GPL(BiscuitOS_memory_fluid_count_inc);
EOF

RC=${FILE_H}
cat << EOF > ${RC}
#ifndef _BISCUITOS_DEBUG_H
#define _BISCUITOS_DEBUG_H

#define BS_COUNTER_NR   20
extern int bs_debug_kernel_enable;
extern int bs_debug_kernel_enable_one;
extern long bs_debug_async_data;
extern int bs_debug_async_data_count;
extern int BiscuitOS_memory_fluid_stop(unsigned long time);
extern int BiscuitOS_memory_fluid_wait(unsigned long time);
extern int BiscuitOS_memory_fluid_gdb_stub(void);
extern int BiscuitOS_memory_fluid_gdb(void);
extern int BiscuitOS_memory_fluid_set_async_data(unsigned long data);
extern int BiscuitOS_memory_fluid_count(int nr);
extern int BiscuitOS_memory_fluid_count_inc(int nr);

static inline long BiscuitOS_hypercall1(unsigned int nr, unsigned long p1)
{
	long ret;
	asm volatile("vmcall"
		     : "=a"(ret)
		     : "a"(nr), "b"(p1)
		     : "memory");
	return ret;
}

/* BiscuitOS Debug stub */
#define bs_debug(...)                                           \\
({                                                              \\
        if (bs_debug_kernel_enable && bs_debug_kernel_enable_one) \\
		pr_info("[BiscuitOS-stub] " __VA_ARGS__);       \\
})

#define bs_kdebug(...)                                          \\
({                                                              \\
	pr_info("[BiscuitOS-stub] " __VA_ARGS__);               \\
})

#define BiscuitOS_memory_fluid_enable()                         \\
({                                                              \\
        bs_debug_kernel_enable = 1;                             \\
        bs_debug_kernel_enable_one = 1;                         \\
        BiscuitOS_hypercall1(100 /* KVM_HC_BISCUITOS */, 1);    \\
})                                                              \\

#define BiscuitOS_memory_fluid_disable()                        \\
({                                                              \\
        bs_debug_kernel_enable = 0;                             \\
        bs_debug_kernel_enable_one = 0;                         \\
        BiscuitOS_hypercall1(100 /* KVM_HC_BISCUITOS */, 0);    \\
})

#define BiscuitOS_memory_fluid_enable_one()                     \\
({                                                              \\
        bs_debug_kernel_enable_one = 1;                         \\
})                                                              \\

#define BiscuitOS_memory_fluid_disable_one()                    \\
({                                                              \\
        bs_debug_kernel_enable_one = 0;                         \\
})

#define BiscuitOS_memory_fluid_async_enable(x)			\\
({								\\
	if ((unsigned long)x == bs_debug_async_data &&) 	\\
			bs_debug_async_data_count++ == 0)	\\
		BiscuitOS_memory_fluid_enable();		\\
	else							\\
		BiscuitOS_memory_fluid_disable();		\\
})

#define is_BiscuitOS_memory_fluid_enable()      bs_debug_kernel_enable

#endif
EOF

echo "ADD CODE INTO: [arch/x86/kvm/x86.c] 

int kvm_emulate_hypercall(struct kvm_vcpu *vcpu)
{
	case KVM_HC_SCHED_YIELD:
	....
	break;
+        case 100:
+                extern int bs_debug_kernel_enable;
+                extern int bs_debug_kernel_enable_one;
+
+                bs_debug_kernel_enable = a0;
+                bs_debug_kernel_enable_one = a0;
+                break;
	default:

}
"

# INSTALL C
cp -rfa ${FILE_C} ${INSTALL_C}
cp -rfa ${FILE_H} ${INSTALL_H}

# UPDATE KERNEL
if grep -q "BiscuitOS-stub" "${INSTALL_C}/Makefile"; then
	echo "obj-y += BiscuitOS-stub.o" > /dev/null
else
	echo "obj-y += BiscuitOS-stub.o" >> ${INSTALL_C}/Makefile
fi

# UPDATE KERNEL HEAD
if grep -q "BiscuitOS-stub" "${INSTALL_H}/kernel.h"; then
	echo "FILE EXIST" > /dev/null
else
	sed -i '18s/^/\#include "BiscuitOS-stub.h"\n/g' ${INSTALL_H}/kernel.h
fi

[ ! -f ${KERNEL}/BiscuitOS-MEMORY-FLUID ] && \
echo "$(date) BiscuitOS Debug Tools Done" > ${KERNEL}/BiscuitOS-MEMORY-FLUID

## KERNEL GDB
if [[ "$LINUX_DESTRO" == *"x86_64"* ]]; then
	if grep -q "CONFIG_ARCH_WANT_FRAME_POINTERS" "${KERNEL}/arch/x86/boot/Makefile"; then
		echo "TOOLS has deploy" > /dev/null
	else
		# INSERT on arch/x86/boot/Makefile
		awk '
		/KBUILD_CFLAGS/ && !added {
			print
			print "ifdef CONFIG_ARCH_WANT_FRAME_POINTERS"
			print "KBUILD_CFLAGS   += -g -fomit-frame-pointer"
			print "KBUILD_AFLAGS_KERNEL += -ggdb"
			print "endif"
			added = 1
			next
		}
		{ print }
		' "${KERNEL}/arch/x86/boot/Makefile" > tmp_file && mv tmp_file "${KERNEL}/arch/x86/boot/Makefile"
	
		awk '
		/KBUILD_CFLAGS/ && !added {
			print
			print "ifdef CONFIG_ARCH_WANT_FRAME_POINTERS"
			print "KBUILD_CFLAGS   += -g -fomit-frame-pointer"
			print "KBUILD_AFLAGS_KERNEL += -ggdb"
			print "endif"
			added = 1
			next
		}
		{ print }
		' "${KERNEL}/arch/x86/boot/compressed/Makefile" > tmp_file && mv tmp_file "${KERNEL}/arch/x86/boot/compressed/Makefile"
	fi

	# ENABLE
	KCONFIG_FILE=${KERNEL}/lib/Kconfig.debug
	if [ ! -f "$KCONFIG_FILE" -o ${SKIP_GDB} = '1' ]; then
		exit 0
	fi

	if grep -q "config ARCH_WANT_FRAME_POINTERS" "$KCONFIG_FILE"; then
		line_num=$(grep -n "config ARCH_WANT_FRAME_POINTERS" "$KCONFIG_FILE" | cut -d':' -f1)
		if ! tail -n +$line_num "$KCONFIG_FILE" | head -n 4 | grep -q "default y"; then
			sed -i "$((line_num+2))i\\\tdefault y" "$KCONFIG_FILE"
			sed -i "$((line_num+3))i\\\tselect FRAME_POINTER" "$KCONFIG_FILE"
		fi
	fi

	echo "QEMU-KERNEL-GDB" >> ${KERNEL}/BiscuitOS-MEMORY-FLUID
fi

echo "BiscuitOS Debug Tools Done"

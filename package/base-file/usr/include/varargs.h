/*	@(#)varargs.h 1.11 89/06/14 SMI; from UCB 4.1 83/05/03	*/

#ifndef _sys_varargs_h
#define _sys_varargs_h

typedef char *va_list;
#if defined(sparc)
# define va_alist __builtin_va_alist
#endif
# define va_dcl int va_alist;
# define va_start(list) list = (char *) &va_alist
# define va_end(list)
# if defined(__BUILTIN_VA_ARG_INCR) && !defined(lint)
#    define va_arg(list,mode) ((mode*)__builtin_va_arg_incr((mode *)list))[0]
# else
#    define va_arg(list,mode) ((mode *)(list += sizeof(mode)))[-1]
# endif

#endif /*!_sys_varargs_h*/

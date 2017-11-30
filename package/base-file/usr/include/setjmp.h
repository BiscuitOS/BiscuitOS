#ifndef _SETJMP_H
#define _SETJMP_H

/* longjump wants %ebp, %esp, %eip, %ebx, %esi, %edi */
#define _JBLEN	32
#define _SJBLEN	(_JBLEN+4)

typedef char * jmp_buf[_JBLEN];
typedef char * sigjmp_buf[_SJBLEN];

int setjmp(jmp_buf env);
void longjmp(jmp_buf env, int val);
int sigsetjmp(sigjmp_buf env, int savemask);
int siglongjmp(sigjmp_buf env, int val);

#endif

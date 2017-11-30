#ifndef _STDLIB_H
#define _STDLIB_H

#include <sys/types.h>

#define EXIT_SUCCESS 0
#define EXIT_FAILURE 1

extern double atof(const char * s);
extern int atoi(const char *s);
extern long atol(const char *s);
extern double strtod(const char *s, char **endp);
extern long strtol(const char *s, char **endp, int base);
extern unsigned long strtoul(const char *s, char **endp, int base);
extern int rand(void);
extern void srand(unsigned int seed);
extern void * calloc(size_t nobj, size_t size);
extern void * malloc(size_t size);
extern void * realloc(void * p, size_t size);
extern void free(void * p);
extern void abort(void);
extern volatile void exit(int status);
extern int atexit(void (*fcn)(void));
extern int system(const char *s);
extern char * getenv(const char *name);
extern void * bsearch(const void *key, const void *base,
	size_t n, size_t size,
	int (*cmp)(const void *keyval, const void *datum));
extern void qsort(void *base, size_t n, size_t size,
	int (*cmp)(const void *,const void *));
extern int abs(int n);
extern long labs(long n);
extern div_t div(int num, int denom);
extern ldiv_t ldiv(long num, long denom);
extern char * getcwd(char * buf, size_t size);

#ifdef __GNUC__
#define __alloca(n) __builtin_alloca(n)
#else
#define __alloca(n) alloca(n)
#endif

#endif

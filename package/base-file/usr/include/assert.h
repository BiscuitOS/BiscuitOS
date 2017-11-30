/* Allow this file to be included multiple times
   with different settings of NDEBUG.  */
#undef assert
#undef __assert

#ifdef NDEBUG
#define assert(ignore)  ((void)0)
#else

void __eprintf ();		/* Defined in gnulib */

#ifdef __STDC__

#define assert(expression)  \
  ((expression) ? 0 : (__assert (#expression, __FILE__, __LINE__), 0))

#define __assert(expression, file, line)  \
  (__eprintf ("Failed assertion `%s' at line %d of `%s'.\n",	\
	      expression, line, file),				\
   abort ())

#else /* no __STDC__; i.e. -traditional.  */

#define assert(expression)  \
  ((expression) ? 0 : __assert (expression, __FILE__, __LINE__))

#define __assert(expression, file, lineno)  \
  (__eprintf ("Failed assertion `%s' at line %d of `%s'.\n",	\
	      "expression", lineno, file),			\
   abort ())

#endif /* no __STDC__; i.e. -traditional.  */

#endif

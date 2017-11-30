#ifndef _GETOPT_H
#define _GETOPT_H

extern int opterr;
extern int optind;
extern int optopt;
extern char *optarg;

extern int getopt(int argc, char ** argv, char * opts);

#endif /* _GETOPT_H */

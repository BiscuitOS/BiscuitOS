#ifndef _TERMCAP_H
#define _TERMCAP_H

extern int tgetent(char *bp, char *name);
extern int tgetflag(char *id);
extern int tgetnum(char *id);
extern char *tgetstr(char *id, char **area);
extern char *tgoto(char *cm, int destcol, int destline);
extern int tputs(char *cp, int affcnt, void (*outc)(int));

#endif /* _TERMCAP_H */

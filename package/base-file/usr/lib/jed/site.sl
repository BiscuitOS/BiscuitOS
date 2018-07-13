;;
;;  Site specific initialiation file.
;;  Should be placed in the JED_LIBRARY directory.
;;

;; A useful hooks function---
;; There is a builtin one in slang as well that is called from C code
( [hook_fun] =hook_fun
  hook_fun defined? { hook_fun eval } if
) runhooks

;; a help command:  if help is in jed.rc then this gets called
("help.sl" evalfile ) help

;; this next command changes to emacs keybindings:
("emacs.sl" evalfile ) emacs

;; For other popular editors:
;;  "edt.sl" evalfile
;;  "wordstar.sl" evalfile
;;  etc...


;; define a fortran macro to load fortran.sl
(
   [f] "Fortran" =f
   "Fortran_Mode" defined?
      {1} { "fortran.sl" evalfile }
      else { f use_keymap
             f setmode
	   } if
) fortran

(
   "DCL_Mode" defined? 
      {1} { "dcl.sl" evalfile } else
      {"DCL" use_keymap
       "dcl" setmode } if
) dcl


;; some file hooks

(
   [type] =type
   
   {type "c"     strcmp {0}{"cmode" setmode 1} else}
   {type "h"     strcmp {0}{"cmode" setmode 1} else}
   {type "tex"   strcmp {0}{"wrap" setmode 1} else}
   {type "txt"   strcmp {0}{"wrap" setmode 1} else}
   {type "doc"   strcmp {0}{"wrap" setmode 1} else}
   {type "f"     strcmp {0}{fortran 1} else}
   {type "for"   strcmp {0}{fortran 1} else}
   {type "com"   strcmp {0}{"_VMS" defined? {dcl 1}{0} else} else}
   {"nomode" setmode 0}
   orelse pop
) mode_hook
 
;; start out with help screen
help

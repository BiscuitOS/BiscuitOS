;;
;;  Miscellaneous functions
;;

;; Since this version of JED uses Linked-List approach and does not
;; support regular expressions, it is hard to search for strings at the 
;; beginning or end of a line.  Here are some functions which do this:

(           ;; bol_fsearch  returns 0 if not found
  [s] =s    ;; sample usage:  push_spot "string" bol_fsearch
            ;;                {pop_spot} !if
  1 { down 
        {bol s looking_at {1 0}{1} else }
	{0 0} else
    } while
) bol_fsearch

;;
;;  atrim:  trims all whitespace around point
;;
( trim
  eolp {
        bolp { 1 left pop 
               what_column trim what_column -
	       {1 right pop } !if
	     }
	 !if
       }
  !if
) atrim



;;
;;  A common problem:  I like 4 column tabs but my printer insists on 8
;;		       column tabs.  How do I keep 8 column tabs but make
;;		       the tab key simulate 4 column tabs?
;;  Solution:

8 =TAB               ;; tabs set at 8 characters
[MYTAB] 4 =MYTAB     ;; a new global variable

( [c goal] what_column =c
  c 1 -
  MYTAB / 1 +
  MYTAB * 1 + =goal
  goal c - whitespace
  ;;
  ;; Now fixup any multiple spaces. Not needed but reduces file size.
  ;;
  skip_white what_column 
  atrim
  what_column - whitespace
  goal goto_column
) my_tab_cmd      "my_tab_cmd"  "^I" setkey  ;; function bound to tab key

(
   [ch]  "}" =ch

   ch insert
   indent_line
   1 left pop del
   update
   ch int =LAST_CHAR self_ins
   "\n\n" insert indent_line
) my_ket_cmd "my_ket_cmd" "}" setkey

   

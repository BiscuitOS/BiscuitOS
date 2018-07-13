;
;   Emacs like bindings for Jed.  
;
;  The default keybindings for Jed use ^W, ^F, and ^K keymaps.  Emacs
;  does not bind these so turn them off

"^K"    unsetkey
"^W"    unsetkey
"^F"    unsetkey

;  Jed default binding of the tab char ^I is to indent line.  Here just insert
;  the tab

	"self_insert_cmd"	"^I"   setkey
;
	"previous_char_cmd"	"^B"   setkey
	"previous_line_cmd"	"^P"   setkey
	"next_line_cmd"		"^N"   setkey
	
	"next_char_cmd"		"^F"   setkey
	"quoted_insert"		"^Q"   setkey
	"newline"		"^M"   setkey
	"newline_and_indent"	"^J"   setkey
	"search_forward"	"^S"   setkey
	"search_backward"	"^Q"   setkey
	"yank"			"^Y"   setkey
	"redraw"		"^L"   setkey
	"bol"			"^A"   setkey
	"page_down"		"^V"   setkey
	"eol_cmd"		"^E"   setkey
	"kill_line"		"^K"   setkey
	"delete_char_cmd"	"^D"   setkey
	"backward_delete_char"	"^?"   setkey
	"sys_spawn_cmd"		"^Z"   setkey
	"redraw"		"^L"   setkey
	"kill_region"		"^W"   setkey
;
;                   The escape map
;
	"bob"			"^[<"	setkey
	"eob"			"^[>"	setkey
	"replace"		"^[%"	setkey
	"evaluate_cmd"		"^[X"	setkey
	"copy_region"		"^[W"	setkey
	"trim_whitespace"	"^[\"	setkey
	"format_paragraph"	"^[Q"	setkey
	"narrow_paragraph"	"^[N"	setkey
	"eob"			"^[>"	setkey
	"bob"			"^[<"	setkey
	"page_up"		"^[V"	setkey
	"kill_region"		"^[W"	setkey
;
;    ^X map
;
	"one_window"		"^X1"	setkey
	"split_window"		"^X2"	setkey
	"other_window"		"^XO"	setkey
	"mark_spot"		"^X/"	setkey
	"pop_spot"		"^XJ"	setkey
	"scroll_right"		"^X>"	setkey
	"scroll_left"		"^X<"	setkey
	"exit_jed"		"^X^C"	setkey
	"write_buffer"		"^X^W"	setkey
	"write_buffer"		"^X^S"	setkey
	"find_file"		"^X^F"	setkey
	"kill_buffer"		"^XK"	setkey
	"switch_to_buffer"	"^XB"	setkey
	"transpose_lines"	"^X^T"	setkey
	"begin_macro"		"^X("	setkey
	"end_macro"		"^X)"	setkey
	"execute_macro"		"^XE"	setkey

;  On the IBM PC, the ^@ is an extended key like all the arrow keys.  The
;  default Jed bindings enable all these keys including the ^@.  See source
;  for details.

"_IBMPC" defined?
        {"set_mark_cmd"		"^@^C"	setkey}
        {"set_mark_cmd"		"^@"	setkey}
    else



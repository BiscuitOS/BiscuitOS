;;
;;  Most/more/less file viewing
;;  


( "global" use_keymap "Done." message ) exit_most

"Most" defined? 
   {  
      [Most] 1 =Most   ;; it is now
      "Most_Map" make_keymap ;; need a make sparse map!
      "pageup"    "^?" "Most_Map" definekey
      "pagedown"  " "  "Most_Map" definekey
      "exit_most" "q"  "Most_Map" definekey      
   }
  !if


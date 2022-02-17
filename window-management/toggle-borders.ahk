; 
;  HIDE borders, title bar, menu bar, vertical scroll
;

#LButton::{
   DetectHiddenWindows True
   MouseGetPos ,, &MouseWin 
   WinSetStyle "-0xC00000", "A"
   WinSetStyle "-0xC40000", "A"
   WinSetStyle "+0x40000000", "A"
   WinSetStyle "+0x80000000", "A"
}


; 
;  SHOW borders, title bar, menu bar, vertical scroll
;

#RButton::{
   DetectHiddenWindows True
   MouseGetPos ,, &MouseWin 
   WinSetStyle "+0xC00000", "A"
   WinSetStyle "+0xC40000", "A"
   WinSetStyle "-0x40000000", "A"
   WinSetStyle "-0x80000000", "A"
}

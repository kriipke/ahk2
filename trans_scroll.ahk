; [Win+A] Toggle always on top
#a:: {
   WinSetAlwaysOnTop -1, "A"
}
 
; [Win+WheelUp] Increase opacity
; see A_MaxHotkeysPerInterval in documentation about "$" prefix at beginning of hotkey
$#WheelUp:: {
   MouseGetPos ,, &MouseWin
   DetectHiddenWindows True
   curtrans := WinGetTransparent(MouseWin)
   if ! curtrans
   curtrans := 255
   newtrans := curtrans + 8
   if newtrans > 0
   {
      WinSetTransparent newtrans, MouseWin
   }else  {
      WinSetTransparent "Off", MouseWin
      WinSetTransparent 255, MouseWin
   }
   return
}
 
; [Win+WheelDown] Decrease opacity
; see A_MaxHotkeysPerInterval in documentation about "$" prefix at beginning of hotkey
$#WheelDown:: {
   DetectHiddenWindows True
   MouseGetPos ,, &MouseWin
   curtrans := WinGetTransparent(MouseWin)
   if ! curtrans
   curtrans := 255
   newtrans := curtrans - 8
   if newtrans > 0
   {
      WinSetTransparent(newtrans, MouseWin)
   }
   return
}
 
; [Win+O] Set opacity 50%
#o:: {
   MouseGetPos ,, &MouseWin
   DetectHiddenWindows True
   WinSetTransparent 127, MouseWin
   return
}
 
; [Ctrl+Win+O] Reset opacity
^#o:: {
   DetectHiddenWindows True
   MouseGetPos ,, &MouseWin
   if (MouseWin){
      WinSetTransparent 255, MouseWin
      WinSetTransparent "Off", MouseWin
   }
   return
}
 
;Hide borders, title bar, menu bar and vertical scroll
LWin & LButton::{
DetectHiddenWindows True
MouseGetPos ,, &MouseWin 
WinSetStyle "-0xC00000", "A"
WinSetStyle "-0xC40000", "A"
WinSetStyle "+0x40000000", "A"
WinSetStyle "+0x80000000", "A"
}

;Show borders, title bar, menu bar and vertical scroll
LWin & RButton::{
DetectHiddenWindows True
MouseGetPos ,, &MouseWin 
WinSetStyle "+0xC00000", "A"
WinSetStyle "+0xC40000", "A"
WinSetStyle "-0x40000000", "A"
WinSetStyle "-0x80000000", "A"
}


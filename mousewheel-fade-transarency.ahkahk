;
;  [ Win + WheelUp ] Increase opacity
;

$#WheelUp:: {
; see A_MaxHotkeysPerInterval in documentation 
; about "$" prefix at beginning of hotkey
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
 
;
;  [ Win + WheelDown ] Decrease opacity
;

$#WheelDown:: {
; see A_MaxHotkeysPerInterval in documentation 
; about "$" prefix at beginning of hotkey
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

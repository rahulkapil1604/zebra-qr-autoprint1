#NoTrayIcon
#SingleInstance Force

SetTimer, WatchInput, 500
inputBuffer := ""
lastText := ""

return

WatchInput:
ClipSaved := ClipboardAll
Clipboard := ""
Send, ^a
Send, ^c
Sleep, 100
inputBuffer := Clipboard
Clipboard := ClipSaved

if (StrLen(inputBuffer) > 2 and inputBuffer != lastText) {
    lastText := inputBuffer
    zpl := "^XA`n^FO50,50^A0N,36,36^FD" . inputBuffer . "^FS`n^XZ"
    FileDelete, %A_ScriptDir%\printme.prn
    FileAppend, %zpl%, %A_ScriptDir%\printme.prn
    RunWait, %ComSpec% /c print /D:"ZDesigner ZD230" "%A_ScriptDir%\printme.prn", , Hide
}
return

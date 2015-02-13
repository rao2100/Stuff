; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; Author : Subba Rao
; My windows automation script =) 
; I have swapped F12 with CapsLock, I used https://sharpkeys.codeplex.com/

;Init
;#SingleInstance
SetKeyDelay, -1

;Launching Folders
F12 & 1::run explore E:\
;F12 & 2::run explore C:\Rao\Personal
;F12 & 3::run explore C:\Rao\Subversion\ATMPSCR_Dev\
;F12 & 4::run explore C:\Rao\Learning\


;Actions
F12 & c::run C:\Rao\bin\Console\Console.exe
F12 & n::run C:\Rao\bin\Notepad++\notepad++.exe
F12 & o::run Outlook
F12 & l::run lync

;Autocomplete
F12 & S::Send SELECT TOP 10 * FROM{Space}
^!s::Send Sincerely,{Enter}Subba Rao
return

;#IfWinActive ahk_class ssms
;::btw::by the way

;; For SQL formatting


; Enclose each line in '$1',
; Used to format a list of strings for SQL
F12 & f::
  selection := GetSelectedText()
  newStr := RegExReplace(selection, "m)^(.*)$", ",'$1'")
  StringReplace, newStr, newStr, `r`n, `r, All   ; fix newline
  StringTrimLeft, newStr, newStr, 1              ; delete first comma
  SendInput %newStr%                             ; paste everything and delete last comma
  return
;; 

GetSelectedText()
{
   tmp = %ClipboardAll%    ; save clipboard
   Clipboard := ""         ; clear clipboard
   Send, ^c                ; simulate Ctrl+C (=selection in clipboard)
   ClipWait, 1             ; wait until clipboard contains data
   selection = %Clipboard% ; save the content of the clipboard
   Clipboard = %tmp%       ; restore old content of the clipboard
   return selection
}



; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

#SingleInstance, Force
#KeyHistory, 0
#Persistent
SetBatchLines, -1
ListLines, Off
SendMode Input 
SetWorkingDir, %A_ScriptDir%
#MaxThreadsPerHotkey, 1 
; ╓─────────╖
; ║ Hotkeys ║
; ╙─────────╜
!Up::
    NewLine("up")
Return
!Down::
    NewLine()
Return
; ╓───────────╖
; ║ Functions ║
; ╙───────────╜
; ╓───────────────────────────────────────────────────────────────────╖
; ║ NewLine() - create a new line up or down using any method you     ║
; ║ can send a function in AutoHotkey.                                ║
; ║ Usage:                                                            ║
; ║     !Up::NewLine("up")  ;; <Alt>+<Up Arrow> creates a new line    ║
; ║                         ;; above the current cursor               ║
; ║     !Down::NewLine()    ;; <Alt>+<Down Arrow> creates a new       ║
; ║                         ;; line below the current cursor          ║
; ╙───────────────────────────────────────────────────────────────────╜
NewLine(direction := "down"){
	if direction in down,up
	{
		SendInput	,	%	((direction="down")?"{End}":"{Home}")
						.	"{Enter}"
						.	((direction="up")?"{Up}":"")
	}
}
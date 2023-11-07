#NoEnv ;Recommended for performance and compatibility with future AutoHotkey releases
; #Warn ;Enable warnings to assist with detecting common errors
SetWorkingDir %A_ScriptDir% ;Ensures a consistent starting directory
#SingleInstance, Force ;Only launch 1 instance of this script
#Hotstring EndChars `t ;The only character that completes a hotstring is Tab
#WinActivateForce ;Forces windows to be activated, skipping the gentle method
#InputLevel 5 ;Makes sure hotkeys can't activate themselves, looping in the process ($ on every hotkey essentially)
SendMode Input ;Recommended for new scripts due to its superior speed and reliability
SetTitleMatchMode, 2 ;Title *consists of* instead of precise title
SetBatchLines, -1 ;Script takes CPU priority
CoordMode, Mouse, Screen ;Cursor coordinates are always of the screen, not window
; if !A_IsAdmin { ;Runs the script as admin if ; are removed
;    Run,*RunAs "%A_ScriptFullPath%"
;    ExitApp
; }
SetCapsLockState, AlwaysOff
#InstallKeybdHook
; ;;;;;;;;;;;;;;;;;
; ; # Win
; ; ! Alt
; ; ^ Control
; ; + Shift
; ;;;;;;;;;;;;;;;;;
; written with version 1.1.33.6

; ^#t::
; x::x

x::
    StartTime := A_TickCount
    Sendinput {Blind}{x DownR}
    while GetKeyState("x","p")
        if ((A_TickCount - StartTime) > 200)
        {
            Sendinput {Blind}{backspace DownR}
            MiscMode := true
            KeyWait, space
            MiscMode := false
            return
        }
return
x & n::
RegRead, light, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme

If light ;make dark
{
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, 0
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme, 0
}
Else ;make light
{
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, 1
    RegWrite, REG_DWORD, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme, 1
}
Return
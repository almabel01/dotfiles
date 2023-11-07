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
SetCapsLockState, AlwaysOff
#InstallKeybdHook
; ;;;;;;;;;;;;;;;;;
; ; # Win
; ; ! Alt
; ; ^ Control
; ; + Shift
; ;;;;;;;;;;;;;;;;;
#Include %A_LineFile%\..\caaps.ahk
#Include %A_LineFile%\..\qmf.ahk
#Include %A_LineFile%\..\ToggleDarkMode.ahk
#Include %A_LineFile%\..\text.ahk
#Include %A_LineFile%\..\outlook.ahk

CapsLock::Esc

; paste without formatting
^+v::
    Clipboard := Clipboard
    Send ^v
Return

; deadkeys := {a: "á", b: "ß", c: "¿"} ; ... etc
; -::
;     Input, key, L1, {delete}{esc}{home}{end} ; ... etc
;     Send % deadkeys[key]
; Return

;; single key changes
;;LCtrl:: ^Tab

;;; hyper mode (caps lock)
;; movement
CapsLock & h:: Left
CapsLock & l:: Right
CapsLock & j:: Down
CapsLock & k:: Up
CapsLock & u:: PgUp
CapsLock & i:: Home
CapsLock & o:: End
CapsLock & p:: PgDn
CapsLock & SC028:: Send ^{Left}
CapsLock & SC02B:: Send ^{Right}
CapsLock & SC01A:: Send +^{Left}
CapsLock & SC01B:: Send +^{Right}

;;hyper deletion
CapsLock & n:: Send ^{BackSpace}
CapsLock & m:: Send {BackSpace}
CapsLock & ,:: Send {Delete}
CapsLock & .:: Send ^{Delete}

;;hyper shortcuts
CapsLock & 0::Reload
CapsLock & Esc::CapsLock
CapsLock & w::!Tab
CapsLock & q::+!Tab

CapsLock & c:: Send #v ;open system clipboard history
CapsLock & a:: Send {Enter}

CapsLock & x:: Send ^c
CapsLock & v:: Send ^v

#IfWinActive, ahk_exe ONENOTE.EXE ;; OneNote

    CapsLock & e:: Send ^e ;; search in all notes
    CapsLock & f:: Send ^f ;; search in note

#IfWinActive

#IfWinActive, ahk_exe slack.exe

    CapsLock & Enter:: Send ^{Enter} ;; send
    CapsLock & w:: Send ^k ;; jump to
    CapsLock & e:: Send ^f ;; search
    CapsLock & d:: Send ^+k ;; jump to direct messages
    CapsLock & u:: Send ^+a ;; jump to unreads
    CapsLock & t:: Send ^+t ;; jump to threads

#IfWinActive

#IfWinActive, ahk_exe qmfwin.exe

    CapsLock & r:: Send ^r ;;re-run query

#IfWinActive

#IfWinActive, ahk_exe saplogon.exe

    CapsLock & e:: Send +{F5} ;;go to view

#IfWinActive

#IfWinActive, ahk_exe Obsidian.exe

    CapsLock & e:: Send ^+e ;;vault search
    CapsLock & f:: Send ^f ;;in-file search
    CapsLock & d:: Send ^+p ;;command prompt
    CapsLock & s:: Send ^+o ;;open quick switcher

#IfWinActive

; CapsLock & 1::run, loop.ahk
; Loop, 100
; {
;     Send {Down 2}{Delete}
; }
; CapsLock & 2::
;     Send ^!m
;     Sleep 500
;     Send {Tab}
;     Send {Enter}
; Return

;s mode (hyper 2)

; s:
;     StartTime := A_TickCount
;     Sendinput {Blind}{s DownR}
;     while GetKeyState("s","p")
;         if ((A_TickCount - StartTime) > 300)
;         {
;             Sendinput {Blind}{backspace DownR}
;             CAAPSMode := true
;             KeyWait, space
;             CAAPSMode := false
;             return
;         }
; return

; s & h:: Left
; s & l:: Right
; s & j:: Down
; s & k:: Up
; s & u:: PgUp
; s & p:: PgDn
; s & i:: Home
; s & o:: End
; s & SC028:: Send ^{Left}
; s & SC02B:: Send ^{Right}
; s & SC01A:: Send +^{Left}
; s & SC01B:: Send +^{Right}

; s & a:: ^c
; s & d:: ^v
; s & f:: Send {Enter}
; s & g:: Send {Tab}

; s & n:: Send ^{BackSpace}
; s & m:: Send {BackSpace}
; s & ,:: Send {Delete}
; s & .:: Send ^{Delete}
;;essentials

;;window management
w::
    StartTime := A_TickCount
    Sendinput {Blind}{w DownR}
    while GetKeyState("w","p")
        if ((A_TickCount - StartTime) > 300)
        {
            Sendinput {Blind}{backspace DownR}
            WindowMode := true
            KeyWait, space
            WindowMode := false
            return
        }
return

Shift & w:: Send, W

w & h:: Send #{Left}
w & j:: Send #{Down}
w & k:: Send #{Up}
w & l:: Send #{Right}
w & i:: Send #^{Left} ; change to virtual desktop to the left
w & o:: Send #^{Right} ; change to virtual desktop to the right
w & n:: Send #+{Right} ; send window to next monitor
w & b:: Send #+{Left} ; send window to previous monitor
;workman-dead like symbols
space::
    StartTime := A_TickCount
    Sendinput {Blind}{Space DownR}
    while GetKeyState("Space","p")
        if ((A_TickCount - StartTime) > 300)
        {
            Sendinput {Blind}{backspace DownR}
            SpaceMode := true
            KeyWait, space
            SpaceMode := false
            return
        }
return

Space & 1:: Send, {'} ;'
Space & 2:: Send, {"} ; "
    Space & 3:: Send, {~} ;~
    Space & 4:: Send, `` ;`
    Space & 7:: Send, {#} ;#
    Space & 8:: Send, {^} ;^
    Space & Tab:: Send, {:} ;: - not in workman
    Space & q:: Send, `% ;%
    Space & w:: Send, & ;&
    Space & e:: Send, ? ;?
    Space & r:: Send, {+}
    Space & t:: Send, {@}
    Space & z:: Send, $
    Space & u:: Send, {_}
    Space & i:: Send, [
    Space & o:: Send, ]
    Space & p:: Send, {!}
    Space & a:: Send, {/}
    Space & s:: Send, (
    Space & d:: Send, {=}
    Space & f:: Send 0
    Space & g:: Send, {{}
    Space & h:: Send, {}}
    Space & j:: Send 1
    Space & k:: Send, {*}
    Space & l:: Send, )
    Space & SC027:: Send, {-}
    ; Space & SC027:: Send, {:}
    Space & SC028:: Send, {"}
    Space & SC02B:: Send, {'}
    Space & LShift:: Send, {;}
    Space & SC056:: Send, {:}
    Space & y:: Send 6
    Space & x:: Send 7
    Space & c:: Send 8
    Space & v:: Send 9
    Space & b:: Send {|}
    Space & n:: Send {\}
    Space & m:: Send 2
    Space & ,:: Send 3
    Space & .:: Send 4
    Space & -:: Send 5

    ;;F keys & numbers
    ; ,::,

    ,::
        StartTime := A_TickCount
        Sendinput {Blind}{, DownR}
        while GetKeyState(",","p")
            if ((A_TickCount - StartTime) > 300)
            {
                Sendinput {Blind}{backspace DownR}
                CommaMode := true
                KeyWait, space
                CommaMode := false
                return
            }
    return

    , & q:: Send {F1}
    , & w:: Send {F2}
    , & e:: Send {F3}
    , & r:: Send {F4}
    , & t:: Send {F5}
    , & z:: Send {F6}
    , & u:: Send {F7}
    , & i:: Send {F8}
    , & o:: Send {F9}
    , & p:: Send {F10}
    , & SC01A:: Send {F11}
    , & SC01B:: Send {F12}

    , & a:: Send {1}
    , & s:: Send {2}
    , & d:: Send {3}
    , & f:: Send {4}
    , & g:: Send {5}
    , & h:: Send {6}
    , & j:: Send {7}
    , & k:: Send {8}
    , & l:: Send {9}

SetCapsLockState, AlwaysOff
;;;;;;;;;;;;;;;;;
;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;
; # Win
; ! Alt
; ^ Control
; + Shift
;;;;;;;;;;;;;;;;;
;;; simple modifications
; Esc::CapsLock
CapsLock::Esc
;;; hyper mode (using caps lock)
;; movement
; LAlt::LControl
; LWin::LAlt
; LControl::LWin
; ; RAlt::RControl
; RControl::RAlt

; !Tab::
; Send {!Tab}
; Return


CapsLock & h::
Send {Left}
Return

CapsLock & l::
Send {Right}
Return

CapsLock & j::
Send {Down}
Return

CapsLock & k::
Send {Up}
Return

CapsLock & p::
Send {PgUp}
Return

CapsLock & i::
Send {Home}
Return

CapsLock & o::
Send {End}
Return

CapsLock & u::
Send {PgDn}
Return

CapsLock & SC027::
Send ^{Left}
Return

CapsLock & SC028::
Send ^{Right}
Return

;;hyper deletion
CapsLock & n::
Send ^{BackSpace}
Return

CapsLock & m::
Send {BackSpace}
Return

CapsLock & ,::
Send {Delete}
Return

CapsLock & .::
Send ^{Delete}
Return

;;hyper shortcuts
CapsLock & c:: ;open system clipboard history
Send #v
Return

CapsLock & a::
Send {Enter}
Return

CapsLock & Enter::
Send ^{Enter}
Return

CapsLock & q::
Send {LControl}
Return

;;CapsLock & 1::


;;Send a +{Tab} a +{Tab} Batch +{Tab}APPLICATION{Down}{Enter}{Tab}BATCH
;;{Down}{Enter}{Tab}NA{Down}{Enter}{Tab}NA{Down}{Enter}


;;Return

;workmandead
$space::send,{space} ; allow spaces still

Space & Tab:: ;`
Send ^!7
Return

Space & q:: ;%
Send +5
Return

Space & w::  ;&
Send ^!c
Return

Space & e:: ;?
Send +,
Return

Space & r:: ;+
Send +3
Return

Space & t:: ;@
Send ^!v
Return

Space & z:: ;$
Send $
Return

Space & u:: ;_
Send +-
Return

Space & i:: ;[
Send ^!f
Return

Space & o:: ;]
Send ^!g
Return

Space & p:: ;!
Send +4
Return

Space & a:: ;/
Send +6
Return

Space & s:: ;(
Send +8
Return

Space & d:: ;=
Send +7
Return

Space & f:: ;0
Send 0
Return

Space & g:: ;{
Send ^!b
Return

Space & h:: ;}
Send ^!n
Return

Space & j:: ;1
Send 1
Return

Space & k:: ;*
Send ^!-
Return

Space & l:: ;)
Send +9
Return

Space & SC027:: ;-
Send -
Return

Space & SC028:: ;#
Send ^!x
Return

Space & LShift:: ;;
Send ^!,
Return

Space & y::
Send 6
Return

Space & x::
Send 7
Return

Space & c::
Send 8
Return

Space & v::
Send 9
Return

Space & b:: ;|
Send ^!w
Return

Space & n:: ;\
Send ^!q
Return

Space & m::
Send 2
Return

Space & ,::
Send 3
Return

Space & .::
Send 4
Return

Space & -::
Send 5
Return

Space & RShift:: ;^
Send ^!3
Return

;;F keys
$,::send,{,} ; allow spaces still

, & q::
Send {F1}
Return

, & w::
Send {F2}
Return

, & e::
Send {F3}
Return

, & r::
Send {F4}
Return

, & t::
Send {F5}
Return

, & z::
Send {F6}
Return

, & u::
Send {F7}
Return

, & i::
Send {F8}
Return

, & o::
Send {F9}
Return

, & p::
Send {F10}
Return

, & SC01A::
Send {F11}
Return

, & SC01B::
Send {F12}
Return

;;;;;;;;;;
;;open apps
$l::send,{l} ; allow spaces still

; l & f::
; IfWinExist ahk_exe firefox.exe
;     WinActivate ahk_exe firefox.exe
; else
;     Run "C:\Program Files\Mozilla Firefox\firefox.exe"
; WinWait ahk_exe firefox.exe
; WinActivate ahk_exe firefox.exe


;;insert text
::cdt::
Send, %A_YYYY%-%A_MM%-%A_DD%
Return

::CTRYOCDE::
Send CTRYCODE
Return

::xdept::
Send SELECT *{Enter}FROM ECA.ECAPDEPT{Enter}WHERE{Enter}CTRYCODE{Shift down}44{Shift up}COMPCODE='
Return

::xew::
Send abel.almassy@ibm.com
Return

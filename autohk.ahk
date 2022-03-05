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

CapsLock::Esc

; paste without formatting
^+v::
    Clipboard := Clipboard
    Send ^v
Return

;;; hyper mode (using caps lock)
;; movement
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

;;window management
$w::send,w
+w::W ;needed for uppercase letter
^w::^w

w & h::
Send #{Left}
Return

w & j::
Send #{Down}
Return

w & k::
Send #{Up}
Return

w & l::
Send #{Right}
Return

w & i:: ; change to virtual desktop to the left
Send #^{Left}
Return

w & o:: ; change to virtual desktop to the right
Send #^{Right}
Return

w & n:: ; send window to next monitor
Send #+{Right}
Return

w & p::  ; send window to previous monitor
Send #+{Left}
Return

;workmandead
$space::send,{space} ; allow spaces still

Space & 3:: ;~
Send ^!1
Return

Space & 4:: ;`
Send ^!7
Return

Space & 6:: ;#
Send ^!x
Return

Space & 7:: ;^
Send ^!3
Return

Space & Tab:: ;: - not in workman
Send +.
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

Space & SC028:: ;"
Send +2
Return

Space & LShift:: ;; - not in workman
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
$,::send,{,} ; allow comma still
+,::Send ?

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

;;control button
; $a::send,{a}
; +a::A
; ^a::^a

; a & c::
; Send ^c
; Return

; a & v::
; Send ^v
; Return

; a & s::
; Send ^s
; Return

; a & f::
; Send ^f
; Return

; a & b::
; Send ^b
; Return

; a & i::
; Send ^i
; Return

; a & k::
; Send ^k
; Return

; a & n::
; Send ^n
; Return

; a & t::
; Send ^t
; Return

; a & x::
; Send ^x
; Return

; a & o::
; Send ^o
; Return

;;;;;;;;;;
;;open apps
$l::send,{l} ; allow spaces still
+l::L

; l & f::
; IfWinExist ahk_exe firefox.exe
;     WinActivate ahk_exe firefox.exe
; else
;     Run "C:\Program Files\Mozilla Firefox\firefox.exe"
; WinWait ahk_exe firefox.exe
; WinActivate ahk_exe firefox.exe

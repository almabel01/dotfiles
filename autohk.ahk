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

; !TODO: jump one word back/forward (& highlight)
; !TODO: jump to the beginning/end of the line

;;hyper deletion
CapsLock & n::
Send {Control down}{BackSpace}{Control up}
Return

CapsLock & m::
Send {BackSpace}
Return

CapsLock & ,::
Send {Delete}
Return

CapsLock & .::
Send {Control down}{Delete}{Control up}
Return

;;hyper shortcuts
CapsLock & c:: ;open system clipboard history
Send #v
Return

CapsLock & a::
Send {Enter}
Return

CapsLock & q::
Send {LControl}
Return

;workmandead
$space::send,{space} ; allow spaces still

Space & Tab::
Send ^!7
Return

Space & q::
Send +5
Return

Space & w::
Send ^!c
Return

Space & e::
Send +,
Return

Space & r::
Send +3
Return

Space & t::
Send ^!v
Return

Space & z::
Send $
Return

Space & u::
Send +-
Return

Space & i::
Send ^!f
Return

Space & o::
Send ^!g
Return

Space & p::
Send +4
Return

Space & a::
Send +6
Return

Space & s::
Send +8
Return

Space & d::
Send +7
Return

Space & f::
Send 0
Return

Space & g::
Send ^!b
Return

Space & h::
Send ^!n
Return

Space & j::
Send 1
Return

Space & k::
Send ^!-
Return

Space & l::
Send +9
Return

Space & SC027::
Send -
Return

Space & SC028::
Send ^!x
Return

Space & LShift::
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

Space & b::
Send ^!w
Return

Space & n::
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

Space & RShift::
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


; LShift & Tab::
; Send ´
; Return
; LShift & q::
; Send  {+5}
; Return
; LShift & w::
; Send &
; Return
; LShift & e::
; Send ?
; Return
; LShift & r::
; Send +
; Return
; LShift & t::
; Send @
; Return
; LShift & z::
; Send $
; Return
; LShift & u::
; Send _
; Return
; LShift & i::
; Send [
; Return
; LShift & p::
; Send ]
; Return
; ; LShift & ő::
; ; Send !
; ; Return
; ; LShift & ú::
; ; Send BackLShift
; ; Return
; LShift & a::
; Send /
; Return
; LShift & s::
; Send (
; Return
; LShift & d::
; Send =
; Return
; LShift & f::
; Send 0
; Return
; LShift & g::
; Send {
; Return
; LShift & h::
; Send }
; Return
; LShift & j::
; Send 1
; Return
; LShift & k::
; Send *
; Return
; LShift & l::
; Send )
; Return
; ; LShift & é::
; ; Send -
; ; Return
; ; LShift & á::
; ; Send {#}
; ; Return
; LShift & y::
; Send 6
; Return
; LShift & x::
; Send 7
; Return
; LShift & c::
; Send 8
; Return
; LShift & v::
; Send 9
; Return
; LShift & b::
; Send |
; Return
; LShift & n::
; Send \
; Return
; LShift & m::
; Send 2
; Return
; LShift & ,::
; Send 3
; Return
; LShift & .::
; Send 4
; Return
; LShift & -::
; Send 5
; Return
; LShift & RShift::
; Send ^
; Return 
;;;;;;;;;;;;;;;;;
; my AHK config to re-create (some parts of) my karabiner config on my work PC
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
Esc::CapsLock
CapsLock::Esc
; LAlt::LControl
; LControl::LAlt
;;; window management
; d & l:: ;tile window right
; Send #{Right}
; Return

; d & h:: ;tile window left
; Send #{Left}
; Return

; d & j:: ;fullscreen
; Send #{down}
; Return

; d & k:: 
; Send #{Up}
; Return

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

; CapsLock & 0:: ;jump to the beginning of the line
; Send ^{Left}
; Return

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

; !TODO: delete line backward
; !TODO: delete forward, delete forward one word & delete line forward
; !TODO: delete whole line
;https://github.com/awdng/autohotkey/blob/master/mac-keyboard-emulation-us.ahk

;;hyper shortcuts
CapsLock & c:: ;open system clipboard history
Send #v
Return

; CapsLock & v:: ; copy&paste selection into previous app
; Send
; (
;     {Alt down}{Tab}{Alt up} 
;     {Control down}v{Control up}
;     {Alt down}{Tab}{Alt up}
; )
; Return

; CapsLock & s:: ;show aText search
; Send ^#s 
; Return

; CapsLock & t:: ;add selection to atext
; Send +^#t
; Return

CapsLock & a::
Send {Enter}
Return

; CapsLock & w::
; Send {LAlt}{Enter}
; Return



;;; launchers

;;;numbers, F-keys & symbols
;;left hand 1(p)
;numbers 1-5
; p & q::
; Send 1
; Return

; p & w::
; Send 2
; Return

; p & e::
; Send 3
; Return

; p & r::
; Send 4
; Return

; p & t::
; Send 5
; Return

; ;f-keys 1-5
; p & a::
; Send {F1}
; Return

; p & s::
; send {F2}
; Return

; p & d::
; Send {F3}
; Return

; p & f::
; Send {F4}
; Return

; p & g::
; Send {F5{}
; Return

; ;;right hand 1(e)
; ;numbers
; e & z::
; Send 6
; Return

; e & u::
; Send 7
; Return

; e & i::
; Send 8
; Return

; e & o::
; Send 9
; Return

; e & p::
; Send 0
; Return

; ;f-keys
; e & h::
; Send {F6}
; Return

; e & j::
; Send {F7}
; Return

; e & k::
; Send {F8}
; Return

; e & l::
; Send {F9}
; Return

; ; !TODO: f10-12

; ;;left hand 2(k)
; ;1st row
; k & q::
; Send !1
; Return

; k & w::
; Send !2
; Return

; k & e::
; Send !3
; Return

; k & r::
; Send !4
; Return

; k & t::
; Send !5
; Return

; ;2nd row
; k & a::
; Send +1
; Return

; k & s::
; Send +2
; Return

; k & d::
; Send +3
; Return

; k & f::
; Send +4
; Return

; k & g::
; Send +5
; Return

; ;;right hand 2(r)
; ;1st row
; r & z::
; Send !6
; Return

; r & u::
; Send !7
; Return

; r & i::
; Send !8
; ; !TODO: <
; Return

; ; !TODO: finish

; ;2nd row
; r & h::
; Send +6
; Return

; r & j::
; Send +7
; Return

; r & k::
; Send +8
; Return

; r & l::
; Send +9
; Return

;;;;;;text replacement
:*:lnin::
Send LinkedIn
Return
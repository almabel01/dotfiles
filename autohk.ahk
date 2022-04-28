SetCapsLockState, AlwaysOff
;;;;;;;;;;;;;;;;;
;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InstallKeybdHook
;;;;;;;;;;;;;;;;;
; # Win
; ! Alt
; ^ Control
; + Shift
;;;;;;;;;;;;;;;;;
#Include  %A_LineFile%\..\text.ahk
#Include  %A_LineFile%\..\ToggleDarkMode.ahk

CapsLock::Esc
; .::F13

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

CapsLock & SC028::
Send ^{Left}
Return

CapsLock & SC02B::
Send ^{Right}
Return

CapsLock & SC01A::
Send +^{Left}
Return

CapsLock & SC01B::
Send +^{Right}
Return

CapsLock & SC00C::
Send {Home}
Return

CapsLock & SC00D::
Send {End}
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

CapsLock & 1::
Send {Enter 15}
Return

;;numpad
LAlt & i::
Send 7
Return

LAlt & o::
Send 8
Return

LAlt & p::
Send 9
Return

LAlt & k::
Send 4
Return

LAlt & l::
Send 5
Return

LAlt & SC027::
Send 6
Return

LAlt & ,::
Send 1
Return

LAlt & .::
Send 2
Return

LAlt & -::
Send 3
Return

LAlt & m::
Send 0
Return

;;essentials
$x::send,x
+x::X
^x::^x
x & n::
Send ^#t ;;toggle dark mode
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

;workman"dead"
$space::send,{space} ; allow spaces still

;;not in workman
Space & 1:: ;'
Send +1
Return

Space & 2::
Send +2
Return
;;

Space & 3:: ;~
Send ^!1
Return

Space & 4:: ;`
Send ^!7
Return

Space & 7:: ;#
Send ^!x
Return

Space & 8:: ;^
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

Space & SC02B:: ;'
Send +1
Return

Space & LShift:: ;; - not in workman
Send ^!,
Return

Space & SC056:: ;:
Send +.
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

;;F keys
$,::send,{,} ; allow period still
+,::Send ?

,  & q::
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
; $l::send,{l} ; allow spaces still
; +l::L

; ;If the window exists, minimize or maximize it depending on its state and return 1, otherwise return 0
; MinMax(title)
; {
;    if WinExist(title)
;    {
;       if WinActive(title)
;          WinMinimize
;       else 
;          WinActivate
;       return 1
;    }
;    else
;       return 0
; }

; ;Run an exe directory and activate its window
; RunApp(appDirectory)
; {
;    Run, %appDirectory%,, Max
;    WinWait, ahk_exe %appDirectory%,, 3
;    WinActivate 
; }

; ;Run app, but you use the window's name instead of its ahk_exe to activate it
; RunApp_Name(appDirectory, name) 
; {
;    Run, %appDirectory%,, Max
;    WinWait, %name%,, 3
;    WinActivate
; }

; ;Run app, but only if the window doesn't exist already. Not the initial version because it would be excessive in use with MinMax
; IfNotExist_RunApp(appDirectory)
; {
;    if !WinExist("ahk_exe" appDirectory)
;    {
;       Run, %appDirectory%,, Max
;       WinWait, ahk_exe %appDirectory%,, 3
;       WinActivate 
;    } 
; }

; ;If the app doesn't exist, launches it. If it does and is active, minimizes it. If it's minimized, activates it
; WindowsApp(appDirectory)
; {
;    ((!MinMax("ahk_exe " appDirectory)) ? (RunApp(appDirectory)))
; }

; ;Windows app, but uses the app's title for finding the window's title. This is for those apps that launch fine, but min/max fuckily using ahk_exe, so you use the title instead. Example — You press the hotkey for chrome, but the pop out youtube window gets activated instead of the browser
; WindowsApp_Name(appName, appDirectory)
; {
;    ((!MinMax(appName)) ? (RunApp_Name(appDirectory, appName)))
; }

; ;Windows app name, but there's no exe fot the app so you put it in your taskbar and use windows + number to launch it and then this optimized way of activating it and minimizing it
; WindowsApp_WinNum(appName, windowsNumber)
; {
;    if !MinMax(appName)
;    {
;       Send, #%windowsNumber%
;       WinWait, %appName%
;       WinActivate
;    } 
; }

; ;Winapp, but for folders. The directive "SetTitleMatchMode, 2" makes this work by recognizing the "C:\" window even if you're actually in "C:\Folder1\Folder2\Folder3\urmum\"
; WindowsApp_Folders(appDirectory)
; {
;    Switch
;    {
;       Case !WinExist(appDirectory):RunWait, %appDirectory%
;       Case WinActive(appDirectory):WinMinimize 
;       Case !WinActive(appDirectory):WinActivate
;    }
; }


;;; home-row mods

; ;; left_win
; $a::send,a
; +a::A
; ^a::^a
; !a::!a
; #a::#a

; a & 0::
; Send #0
; Return

; a & 1::
; Send #1
; Return

; a & 2::
; Send #2
; Return

; a & 3::
; Send #3
; Return

; a & 4::
; Send #4
; Return

; a & 5::
; Send #5
; Return

; a & 6::
; Send #6
; Return

; a & 7::
; Send #7
; Return

; a & 8::
; Send #8
; Return

; a & 9::
; Send #9
; Return

; a & SC00B::
; Send #{SC00B}
; Return

; a & SC00C::
; Send #{SC00C}
; Return

; a & SC00D::
; Send #{SC00D}
; Return

; a & Backspace::
; Send #{Backspace}
; Return

; a & Tab::
; Send #{Tab}
; Return

; a & q::
; Send #q
; Return

; a & w::
; Send #w
; Return

; a & e::
; Send #e
; Return

; a & r::
; Send #r
; Return

; a & t::
; Send #t
; Return

; a & z::
; Send #z
; Return

; a & u::
; Send #u
; Return

; a & i::
; Send #i
; Return

; a & o::
; Send #o
; Return

; a & p::
; Send #p
; Return

; a & SC01A::
; Send #{SC01A}
; Return

; a & SC01B::
; Send #{SC01B}
; Return

; a & a::
; Send #a
; Return

; a & s::
; Send #s
; Return

; a & d::
; Send #d
; Return

; a & f::
; Send #f
; Return

; a & g::
; Send #g
; Return

; a & h::
; Send #h
; Return

; a & j::
; Send #j
; Return

; a & k::
; Send #k
; Return

; a & l::
; Send #l
; Return

; a & SC027::
; Send #{SC027}
; Return

; a & SC028::
; Send #{SC028}
; Return

; a & SC02B::
; Send #{SC02B
; Return

; a & Enter::
; Send #{Enter}
; Return

; a & SC056::
; Send #{SC056}
; Return

; a & y::
; Send #y
; Return

; a & x::
; Send #x
; Return

; a & c::
; Send #c
; Return

; a & v::
; Send #v
; Return

; a & b::
; Send #b
; Return

; a & n::
; Send #n
; Return

; a & m::
; Send #m
; Return

; a & ,::
; Send #,
; Return

; a & .::
; Send #.
; Return

; a & -::
; Send #-
; Return


; ;; left_alt
; $s::send,s
; +s::S
; ^s::^s
; !s::!s
; #s::#s

; s & 0::
; Send !0
; Return

; s & 1::
; Send !1
; Return

; s & 2::
; Send !2
; Return

; s & 3::
; Send !3
; Return

; s & 4::
; Send !4
; Return

; s & 5::
; Send !5
; Return

; s & 6::
; Send !6
; Return

; s & 7::
; Send !7
; Return

; s & 8::
; Send !8
; Return

; s & 9::
; Send !9
; Return

; s & SC00B::
; Send !{SC00B}
; Return

; s & SC00C::
; Send !{SC00C}
; Return

; s & SC00D::
; Send !{SC00D}
; Return

; s & Backspace::
; Send !{Backspace}
; Return

; s & Tab::
; Send !{Tab}
; Return

; s & q::
; Send !q
; Return

; s & w::
; Send !w
; Return

; s & e::
; Send !e
; Return

; s & r::
; Send !r
; Return

; s & t::
; Send !t
; Return

; s & z::
; Send !z
; Return

; s & u::
; Send !u
; Return

; s & i::
; Send !i
; Return

; s & o::
; Send !o
; Return

; s & p::
; Send !p
; Return

; s & SC01A::
; Send !{SC01A}
; Return

; s & SC01B::
; Send !{SC01B}
; Return

; s & a::
; Send !a
; Return

; s & s::
; Send !s
; Return

; s & d::
; Send !d
; Return

; s & f::
; Send !f
; Return

; s & g::
; Send !g
; Return

; s & h::
; Send !h
; Return

; s & j::
; Send !j
; Return

; s & k::
; Send !k
; Return

; s & l::
; Send !l
; Return

; s & SC027::
; Send !{SC027}
; Return

; s & SC028::
; Send !{SC028}
; Return

; s & SC02B::
; Send !{SC02B}
; Return

; s & Enter::
; Send !{Enter}
; Return

; s & SC056::
; Send !{SC056}
; Return

; s & y::
; Send !y
; Return

; s & x::
; Send !x
; Return

; s & c::
; Send !c
; Return

; s & v::
; Send !v
; Return

; s & b::
; Send !b
; Return

; s & n::
; Send !n
; Return

; s & m::
; Send !m
; Return

; s & ,::
; Send !,
; Return

; s & .::
; Send !.
; Return

; s & -::
; Send !-
; Return


; ;; left_ctrl
; $d::send,d
; +d::D
; ^d::^d
; !d::!d
; #d::#d

; d & 0::
; Send ^0
; Return

; d & 1::
; Send ^1
; Return

; d & 2::
; Send ^2
; Return

; d & 3::
; Send ^3
; Return

; d & 4::
; Send ^4
; Return

; d & 5::
; Send ^5
; Return

; d & 6::
; Send ^6
; Return

; d & 7::
; Send ^7
; Return

; d & 8::
; Send ^8
; Return

; d & 9::
; Send ^9
; Return

; d & SC00B::
; Send ^{SC00B}
; Return

; d & SC00C::
; Send ^{SC00C}
; Return

; d & SC00D::
; Send ^{SC00D}
; Return

; d & Backspace::
; Send ^{Backspace}
; Return

; d & Tab::
; Send ^{Tab}
; Return

; d & q::
; Send ^q
; Return

; d & w::
; Send ^w
; Return

; d & e::
; Send ^e
; Return

; d & r::
; Send ^r
; Return

; d & t::
; Send ^t
; Return

; d & z::
; Send ^z
; Return

; d & u::
; Send ^u
; Return

; d & i::
; Send ^i
; Return

; d & o::
; Send ^o
; Return

; d & p::
; Send ^p
; Return

; d & SC01A::
; Send ^{SC01A}
; Return

; d & SC01B::
; Send ^{SC01B}
; Return

; d & a::
; Send ^a
; Return

; d & s::
; Send ^s
; Return

; d & d::
; Send ^d
; Return

; d & f::
; Send ^f
; Return

; d & g::
; Send ^g
; Return

; d & h::
; Send ^h
; Return

; d & j::
; Send ^j
; Return

; d & k::
; Send ^k
; Return

; d & l::
; Send ^l
; Return

; d & SC027::
; Send ^{SC027}
; Return

; d & SC028::
; Send ^{SC028}
; Return

; d & SC02B::
; Send ^{SC02B}
; Return

; d & Enter::
; Send ^{Enter}
; Return

; d & SC056::
; Send ^{SC056}
; Return

; d & y::
; Send ^y
; Return

; d & x::
; Send ^x
; Return

; d & c::
; Send ^c
; Return

; d & v::
; Send ^v
; Return

; d & b::
; Send ^b
; Return

; d & n::
; Send ^n
; Return

; d & m::
; Send ^m
; Return

; d & ,::
; Send ^,
; Return

; d & .::
; Send ^.
; Return

; d & -::
; Send ^-
; Return


; ;; left_shift
; $f::send,f
; +f::F
; ^f::^f
; !f::!f
; #f::#f

; f & 0::
; Send +0
; Return

; f & 1::
; Send +1
; Return

; f & 2::
; Send +2
; Return

; f & 3::
; Send +3
; Return

; f & 4::
; Send +4
; Return

; f & 5::
; Send +5
; Return

; f & 6::
; Send +6
; Return

; f & 7::
; Send +7
; Return

; f & 8::
; Send +8
; Return

; f & 9::
; Send +9
; Return

; f & SC00B::
; Send +{SC00B}
; Return

; f & SC00C::
; Send +{SC00C}
; Return

; f & SC00D::
; Send +{SC00D}
; Return

; f & Backspace::
; Send +{Backspace}
; Return

; f & Tab::
; Send +{Tab}
; Return

; f & q::
; Send +q
; Return

; f & w::
; Send +w
; Return

; f & e::
; Send +e
; Return

; f & r::
; Send +r
; Return

; f & t::
; Send +t
; Return

; f & z::
; Send +z
; Return

; f & u::
; Send +u
; Return

; f & i::
; Send +i
; Return

; f & o::
; Send +o
; Return

; f & p::
; Send +p
; Return

; f & SC01A::
; Send +{SC01A}
; Return

; f & SC01B::
; Send +{SC01B}
; Return

; f & a::
; Send +a
; Return

; f & s::
; Send +s
; Return

; f & d::
; Send +d
; Return

; f & f::
; Send +f
; Return

; f & g::
; Send +g
; Return

; f & h::
; Send +h
; Return

; f & j::
; Send +j
; Return

; f & k::
; Send +k
; Return

; f & l::
; Send +l
; Return

; f & SC027::
; Send +{SC027}
; Return

; f & SC028::
; Send +{SC028}
; Return

; f & SC02B::
; Send +{SC02B}
; Return

; f & Enter::
; Send +{Enter}
; Return

; f & SC056::
; Send +{SC056}
; Return

; f & y::
; Send +y
; Return

; f & x::
; Send +x
; Return

; f & c::
; Send +c
; Return

; f & v::
; Send +v
; Return

; f & b::
; Send +b
; Return

; f & n::
; Send +n
; Return

; f & m::
; Send +m
; Return

; f & ,::
; Send +,
; Return

; f & .::
; Send +.
; Return

; f & -::
; Send +-
; Return


; ;;;;;;;;;;;;;;;;;;;;


; ;; right_shift
; $j::send,j
; +j::J
; ^j::^j
; !j::!j
; #j::#j

; j & 0::
; Send +0
; Return

; j & 1::
; Send +1
; Return

; j & 2::
; Send +2
; Return

; j & 3::
; Send +3
; Return

; j & 4::
; Send +4
; Return

; j & 5::
; Send +5
; Return

; j & 6::
; Send +6
; Return

; j & 7::
; Send +7
; Return

; j & 8::
; Send +8
; Return

; j & 9::
; Send +9
; Return

; j & SC00B::
; Send +{SC00B}
; Return

; j & SC00C::
; Send +{SC00C}
; Return

; j & SC00D::
; Send +{SC00D}
; Return

; j & Backspace::
; Send +{Backspace}
; Return

; j & Tab::
; Send +{Tab}
; Return

; j & q::
; Send +q
; Return

; j & w::
; Send +w
; Return

; j & e::
; Send +e
; Return

; j & r::
; Send +r
; Return

; j & t::
; Send +t
; Return

; j & z::
; Send +z
; Return

; j & u::
; Send +u
; Return

; j & i::
; Send +i
; Return

; j & o::
; Send +o
; Return

; j & p::
; Send +p
; Return

; j & SC01A::
; Send +{SC01A}
; Return

; j & SC01B::
; Send +{SC01B}
; Return

; j & a::
; Send +a
; Return

; j & s::
; Send +s
; Return

; j & d::
; Send +d
; Return

; j & f::
; Send +f
; Return

; j & g::
; Send +g
; Return

; j & h::
; Send +h
; Return

; j & j::
; Send +j
; Return

; j & k::
; Send +k
; Return

; j & l::
; Send +l
; Return

; j & SC027::
; Send +{SC027}
; Return

; j & SC028::
; Send +{SC028}
; Return

; j & SC02B::
; Send +{SC02B}
; Return

; j & Enter::
; Send +{Enter}
; Return

; j & SC056::
; Send +{SC056}
; Return

; j & y::
; Send +y
; Return

; j & x::
; Send +x
; Return

; j & c::
; Send +c
; Return

; j & v::
; Send +v
; Return

; j & b::
; Send +b
; Return

; j & n::
; Send +n
; Return

; j & m::
; Send +m
; Return

; j & ,::
; Send +,
; Return

; j & .::
; Send +.
; Return

; j & -::
; Send +-
; Return



; ;; right_ctrl
; $k::send,k
; +k::k
; ^k::^k
; !k::!k
; #k::#k

; k & 0::
; Send ^0
; Return

; k & 1::
; Send ^1
; Return

; k & 2::
; Send ^2
; Return

; k & 3::
; Send ^3
; Return

; k & 4::
; Send ^4
; Return

; k & 5::
; Send ^5
; Return

; k & 6::
; Send ^6
; Return

; k & 7::
; Send ^7
; Return

; k & 8::
; Send ^8
; Return

; k & 9::
; Send ^9
; Return

; k & SC00B::
; Send ^{SC00B}
; Return

; k & SC00C::
; Send ^{SC00C}
; Return

; k & SC00D::
; Send ^{SC00D}
; Return

; k & Backspace::
; Send ^{Backspace}
; Return

; k & Tab::
; Send ^{Tab}
; Return

; k & q::
; Send ^q
; Return

; k & w::
; Send ^w
; Return

; k & e::
; Send ^e
; Return

; k & r::
; Send ^r
; Return

; k & t::
; Send ^t
; Return

; k & z::
; Send ^z
; Return

; k & u::
; Send ^u
; Return

; k & i::
; Send ^i
; Return

; k & o::
; Send ^o
; Return

; k & p::
; Send ^p
; Return

; k & SC01A::
; Send ^{SC01A}
; Return

; k & SC01B::
; Send ^{SC01B}
; Return

; k & a::
; Send ^a
; Return

; k & s::
; Send ^s
; Return

; k & d::
; Send ^d
; Return

; k & f::
; Send ^f
; Return

; k & g::
; Send ^g
; Return

; k & h::
; Send ^h
; Return

; k & j::
; Send ^j
; Return

; k & k::
; Send ^k
; Return

; k & l::
; Send ^l
; Return

; k & SC027::
; Send ^{SC027}
; Return

; k & SC028::
; Send ^{SC028}
; Return

; k & SC02B::
; Send ^{SC02B}
; Return

; k & Enter::
; Send ^{Enter}
; Return

; k & SC056::
; Send ^{SC056}
; Return

; k & y::
; Send ^y
; Return

; k & x::
; Send ^x
; Return

; k & c::
; Send ^c
; Return

; k & v::
; Send ^v
; Return

; k & b::
; Send ^b
; Return

; k & n::
; Send ^n
; Return

; k & m::
; Send ^m
; Return

; k & ,::
; Send ^,
; Return

; k & .::
; Send ^.
; Return

; k & -::
; Send ^-
; Return



; ;; right_alt
; $l::send,l
; +l::l
; ^l::^l
; !l::!l
; #l::#l

; l & 0::
; Send !0
; Return

; l & 1::
; Send !1
; Return

; l & 2::
; Send !2
; Return

; l & 3::
; Send !3
; Return

; l & 4::
; Send !4
; Return

; l & 5::
; Send !5
; Return

; l & 6::
; Send !6
; Return

; l & 7::
; Send !7
; Return

; l & 8::
; Send !8
; Return

; l & 9::
; Send !9
; Return

; l & SC00B::
; Send !{SC00B}
; Return

; l & SC00C::
; Send !{SC00C}
; Return

; l & SC00D::
; Send !{SC00D}
; Return

; l & Backspace::
; Send !{Backspace}
; Return

; l & Tab::
; Send !{Tab}
; Return

; l & q::
; Send !q
; Return

; l & w::
; Send !w
; Return

; l & e::
; Send !e
; Return

; l & r::
; Send !r
; Return

; l & t::
; Send !t
; Return

; l & z::
; Send !z
; Return

; l & u::
; Send !u
; Return

; l & i::
; Send !i
; Return

; l & o::
; Send !o
; Return

; l & p::
; Send !p
; Return

; l & SC01A::
; Send !{SC01A}
; Return

; l & SC01B::
; Send !{SC01B}
; Return

; l & a::
; Send !a
; Return

; l & s::
; Send !s
; Return

; l & d::
; Send !d
; Return

; l & f::
; Send !f
; Return

; l & g::
; Send !g
; Return

; l & h::
; Send !h
; Return

; l & j::
; Send !j
; Return

; l & k::
; Send !k
; Return

; l & l::
; Send !l
; Return

; l & SC027::
; Send !{SC027}
; Return

; l & SC028::
; Send !{SC028}
; Return

; l & SC02B::
; Send !{SC02B}
; Return

; l & Enter::
; Send !{Enter}
; Return

; l & SC056::
; Send !{SC056}
; Return

; l & y::
; Send !y
; Return

; l & x::
; Send !x
; Return

; l & c::
; Send !c
; Return

; l & v::
; Send !v
; Return

; l & b::
; Send !b
; Return

; l & n::
; Send !n
; Return

; l & m::
; Send !m
; Return

; l & ,::
; Send !,
; Return

; l & .::
; Send !.
; Return

; l & -::
; Send !-
; Return



; ;; right_win
; $SC027::send,{SC027}
; +SC027::+SC027
; ^SC027::^SC027
; !SC027::!SC027
; #SC027::#SC027

; SC027 & 0::
; Send #0
; Return

; SC027 & 1::
; Send #1
; Return

; SC027 & 2::
; Send #2
; Return

; SC027 & 3::
; Send #3
; Return

; SC027 & 4::
; Send #4
; Return

; SC027 & 5::
; Send #5
; Return

; SC027 & 6::
; Send #6
; Return

; SC027 & 7::
; Send #7
; Return

; SC027 & 8::
; Send #8
; Return

; SC027 & 9::
; Send #9
; Return

; SC027 & SC00B::
; Send #{SC00B}
; Return

; SC027 & SC00C::
; Send #{SC00C}
; Return

; SC027 & SC00D::
; Send #{SC00D}
; Return

; SC027 & Backspace::
; Send #{Backspace}
; Return

; SC027 & Tab::
; Send #{Tab}
; Return

; SC027 & q::
; Send #q
; Return

; SC027 & w::
; Send #w
; Return

; SC027 & e::
; Send #e
; Return

; SC027 & r::
; Send #r
; Return

; SC027 & t::
; Send #t
; Return

; SC027 & z::
; Send #z
; Return

; SC027 & u::
; Send #u
; Return

; SC027 & i::
; Send #i
; Return

; SC027 & o::
; Send #o
; Return

; SC027 & p::
; Send #p
; Return

; SC027 & SC01A::
; Send #{SC01A}
; Return

; SC027 & SC01B::
; Send #{SC01B}
; Return

; SC027 & a::
; Send #a
; Return

; SC027 & s::
; Send #s
; Return

; SC027 & d::
; Send #d
; Return

; SC027 & f::
; Send #f
; Return

; SC027 & g::
; Send #g
; Return

; SC027 & h::
; Send #h
; Return

; SC027 & j::
; Send #j
; Return

; SC027 & k::
; Send #k
; Return

; SC027 & l::
; Send #l
; Return

; SC027 & SC027::
; Send #{SC027}
; Return

; SC027 & SC028::
; Send #{SC028}
; Return

; SC027 & SC02B::
; Send #{SC02B}
; Return

; SC027 & Enter::
; Send #{Enter}
; Return

; SC027 & SC056::
; Send #{SC056}
; Return

; SC027 & y::
; Send #y
; Return

; SC027 & x::
; Send #x
; Return

; SC027 & c::
; Send #c
; Return

; SC027 & v::
; Send #v
; Return

; SC027 & b::
; Send #b
; Return

; SC027 & n::
; Send #n
; Return

; SC027 & m::
; Send #m
; Return

; SC027 & ,::
; Send #,
; Return

; SC027 & .::
; Send #.
; Return

; SC027 & -::
; Send #-
; Return

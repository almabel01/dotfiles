-- Set up hotkey combinations
local hyper      = {"cmd", "alt", "ctrl"}
local hypershift = {"cmd", "alt", "shift"}
local funkyhyper = {"cmd", "ctrl", "shift"}

hs.hotkey.bind(hypershift, 'space', hs.spotify.displayCurrentTrack)
hs.hotkey.bind(hypershift, 'P', hs.spotify.playpause)
hs.hotkey.bind(hypershift, 'N', hs.spotify.next)
hs.hotkey.bind(hypershift, 'I', hs.spotify.previous)
hs.hotkey.bind(funkyhyper, 'I', hs.spotify.volumeDown)
hs.hotkey.bind(funkyhyper, 'O', hs.spotify.volumeUp)
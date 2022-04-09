-- Set up hotkey combinations
-- local hyper      = {"cmd", "alt", "ctrl"}
-- local hypershift = {"cmd", "alt", "shift"}
local hyperf = {"cmd", "ctrl", "shift"} --funkyhyper

hs.hotkey.bind(hyperf, 'space', hs.spotify.displayCurrentTrack)
hs.hotkey.bind(hyperf, 'P', hs.spotify.playpause)
hs.hotkey.bind(hyperf, 'N', hs.spotify.next)
hs.hotkey.bind(hyperf, 'I', hs.spotify.previous)
hs.hotkey.bind(hyperf, 'I', hs.spotify.volumeDown)
hs.hotkey.bind(hyperf, 'O', hs.spotify.volumeUp)

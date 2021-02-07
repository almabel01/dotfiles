-- Get around paste blockers with cmd+shift+v
hs.hotkey.bind({"cmd", "shift"}, "V", function()
  hs.eventtap.keyStrokes(hs.pasteboard.getContents())
end)

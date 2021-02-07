-- local application = require "hs.application"
-- local hotkey = require "hs.hotkey"
-- local window = require "hs.window"
-- local layout = require "hs.layout"
-- local grid = require "hs.grid"
-- local hints = require "hs.hints"
-- local screen = require "hs.screen"
-- local alert = require "hs.alert"
-- local fnutils = require "hs.fnutils"
-- local geometry = require "hs.geometry"
-- local mouse = require "hs.mouse"

-- hyper = {"alt"}
-- hyperShift = {"alt", "shift"}
hyperCtrl = {"alt", "ctrl", "tab"}
hyperShiftCtrl = {"alt", "shift", "ctrl", "tab"}

-- -- switch active window
-- hotkey.bind(hyper, "tab", function()
--   window.switcher.nextWindow()
-- end)

-- hotkey.bind(hyperShift, "tab", function()
--   window.switcher.previousWindow()
-- end)

-- set up your windowfilter
switcher = hs.window.switcher.new() -- default windowfilter: only visible windows, all Spaces
switcher_space = hs.window.switcher.new(hs.window.filter.new():setCurrentSpace(true):setDefaultFilter{}) -- include minimized/hidden windows, current Space only
switcher_browsers = hs.window.switcher.new{'Safari','Google Chrome'} -- specialized switcher for your dozens of browser windows :)

-- bind to hotkeys; WARNING: at least one modifier key is required!
-- hs.hotkey.bind('alt','tab','Next window',function()switcher:next()end)
-- hs.hotkey.bind('alt-shift','tab','Prev window',function()switcher:previous()end)

-- alternatively, call .nextWindow() or .previousWindow() directly (same as hs.window.switcher.new():next())
hs.hotkey.bind('alt','tab','Next window',hs.window.switcher.nextWindow)
-- you can also bind to `repeatFn` for faster traversing
hs.hotkey.bind('alt-shift','tab','Prev window',hs.window.switcher.previousWindow,nil,hs.window.switcher.previousWindow)

--
-- hs.hotkey.bind('alt', 'tab', 'Next window', hs.window.filter.new()setCurrentSpace(true):setDefaultFilter{})
--
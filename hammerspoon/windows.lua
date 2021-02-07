local application = require "hs.application"
local hotkey = require "hs.hotkey"
local window = require "hs.window"
local layout = require "hs.layout"
local grid = require "hs.grid"
local hints = require "hs.hints"
local screen = require "hs.screen"
local alert = require "hs.alert"
local fnutils = require "hs.fnutils"
local geometry = require "hs.geometry"
local mouse = require "hs.mouse"

hyper = {"cmd", "ctrl", "alt"}
hyperShift = {"alt", "shift"}
hyperCtrl = {"alt", "ctrl"}
hyperAlt = {"ctrl", "alt", "shift"}

-- display a keyboard hint for switching focus to each window
hotkey.bind(hyperCtrl, 'H', function()
    hints.windowHints()
    -- Display current application window
    -- hints.windowHints(hs.window.focusedWindow():application():allWindows())
end)

-- center window
hotkey.bind(hyper, 'C', function() 
  window.focusedWindow():centerOnScreen()
end)

-- switch active window
hotkey.bind(hyper, "O", function()
  window.switcher.nextWindow()
end)

hotkey.bind(hyperAlt, "O", function()
  window.switcher.previousWindow()
end)

-- hs.urlevent.bind('nextWindow', function()
--   window.switcher.nextWindow()
-- end)

-- move active window to previous monitor
hotkey.bind(hyper, "P", function()
  window.focusedWindow():moveOneScreenWest()
end)

-- move active window to next monitor
hotkey.bind(hyper, "N", function()
  window.focusedWindow():moveOneScreenEast()
end)

-- move cursor to previous monitor
hotkey.bind(hyperCtrl, "Left", function ()
  focusScreen(window.focusedWindow():screen():previous())
end)

-- move cursor to next monitor
hotkey.bind(hyperCtrl, "Right", function ()
  focusScreen(window.focusedWindow():screen():next())
end)


--Predicate that checks if a window belongs to a screen
function isInScreen(screen, win)
  return win:screen() == screen
end

function focusScreen(screen)
  --Get windows within screen, ordered from front to back.
  --If no windows exist, bring focus to desktop. Otherwise, set focus on
  --front-most application window.
  local windows = fnutils.filter(
      window.orderedWindows(),
      fnutils.partial(isInScreen, screen))
  local windowToFocus = #windows > 0 and windows[1] or window.desktop()
  windowToFocus:focus()

  -- move cursor to center of screen
  local pt = geometry.rectMidPoint(screen:fullFrame())
  mouse.setAbsolutePosition(pt)
end

-- maximized active window and move to selected monitor
moveto = function(win, n)
  local screens = screen.allScreens()
  if n > #screens then
    alert.show("Only " .. #screens .. " monitors ")
  else
    local toWin = screen.allScreens()[n]:name()
    alert.show("Move " .. win:application():name() .. " to " .. toWin)

    layout.apply({{nil, win:title(), toWin, layout.maximized, nil, nil}})
    
  end
end

-- move cursor to monitor 1 and maximize the window
hotkey.bind(hyper, "1", function()
  local win = window.focusedWindow()
  moveto(win, 1)
end)

hotkey.bind(hyper, "2", function()
  local win = window.focusedWindow()
  moveto(win, 2)
end)

hotkey.bind(hyper, "3", function()
  local win = window.focusedWindow()
  moveto(win, 3)
end)
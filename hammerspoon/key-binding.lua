local wm = require('window-management')
local hk = require "hs.hotkey"

-- * Key Binding Utility
--- Bind hotkey for window management.
-- @function windowBind
-- @param {table} hyper - hyper key set
-- @param { ...{key=value} } keyFuncTable - multiple hotkey and function pairs
--   @key {string} hotkey
--   @value {function} callback function
local function windowBind(hyper, keyFuncTable)
  for key,fn in pairs(keyFuncTable) do
    hk.bind(hyper, key, fn)
  end
end

-- * Move window to screen
windowBind({"ctrl", "alt"}, {
  left = wm.throwLeft,
  right = wm.throwRight
})

-- * Set Window Position on screen
windowBind({"ctrl", "alt", "cmd"}, {
  m = wm.maximizeWindow,    -- ⌃⌥⌘ + f
  c = wm.centerOnScreen,    -- ⌃⌥⌘ + c
  h = wm.leftHalf,       -- ⌃⌥⌘ + h
  l = wm.rightHalf,     -- ⌃⌥⌘ + l
  k = wm.topHalf,          -- ⌃⌥⌘ + k
  j = wm.bottomHalf      -- ⌃⌥⌘ + j
})
-- * Set Window Position on screen - move window bottom border
windowBind({"ctrl", "alt", "shift"}, {
  h = wm.rightToLeft,      -- ⌃⌥⇧ + h
  l = wm.rightToRight,    -- ⌃⌥⇧ + l
  k = wm.bottomUp,           -- ⌃⌥⇧ + k
  j = wm.bottomDown        -- ⌃⌥⇧ + j
})
-- * Set Window Position on screen - move window top border
windowBind({"alt", "cmd", "shift"}, {
  h = wm.leftToLeft,      -- ⌥⌘⇧ + h
  l = wm.leftToRight,    -- ⌥⌘⇧ + l
  k = wm.topUp,             -- ⌥⌘⇧ + k
  j = wm.topDown          -- ⌥⌘⇧ + j
})

-- * Windows-like cycle
windowBind({"ctrl", "alt", "cmd"}, {
  u = wm.cycleLeft,          -- ⌃⌥⌘ + u
  i = wm.cycleRight          -- ⌃⌥⌘ + i
})
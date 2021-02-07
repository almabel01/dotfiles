-- move window to next screen
-- source: https://medium.com/@jma/use-hammerspoon-to-move-cursor-between-monitors-1a53b727b147

local hyperShift = {'ctrl', 'alt', 'cmd', 'shift'}
hs.hotkey.bind(hyper, 'n', function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
hs.mouse.setAbsolutePosition(center)
end)
--hs.window.animationDuration = 0
--units = {
--  right30       = { x = 0.70, y = 0.00, w = 0.30, h = 1.00 },
--  right50       = { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
--  right70       = { x = 0.30, y = 0.00, w = 0.70, h = 1.00 },
--  left70        = { x = 0.00, y = 0.00, w = 0.70, h = 1.00 },
--  left50        = { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
--  left30        = { x = 0.00, y = 0.00, w = 0.30, h = 1.00 },
--  top50         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
--  bot50         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },
--  upright30     = { x = 0.70, y = 0.00, w = 0.30, h = 0.50 },
--  botright30    = { x = 0.70, y = 0.50, w = 0.30, h = 0.50 },
--  upleft70      = { x = 0.00, y = 0.00, w = 0.70, h = 0.50 },
--  botleft70     = { x = 0.00, y = 0.50, w = 0.70, h = 0.50 },
--  maximum       = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 }
--}
--
--mash = { 'alt', 'ctrl', 'cmd' }
--hs.hotkey.bind(mash, 'Left', function() hs.window.focusedWindow():move(units.left50,     nil, true) end)
--hs.hotkey.bind(mash, 'Right', function() hs.window.focusedWindow():move(units.right50,     nil, true) end)
--hs.hotkey.bind(mash, 'Up', function() hs.window.focusedWindow():move(units.maximum,    nil, true) end)
--hs.hotkey.bind(mash, 'm', function() hs.window.focusedWindow():move(units.maximum,    nil, true) end)
hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall.repos.ShiftIt = {
   url = "https://github.com/peterklijn/hammerspoon-shiftit",
   desc = "ShiftIt spoon repository",
   branch = "master",
}
spoon.SpoonInstall:andUse("ShiftIt", { repo = "ShiftIt" })
spoon.ShiftIt:bindHotkeys({})


local mash = { 'shift', 'cmd' }
local pasteboard = require('hs.pasteboard')
hs.hotkey.bind({ 'shift', 'alt' }, 't', function()
  local d = os.date('%r')
  hs.eventtap.keyStrokes(d)
  pasteboard.setContents(d) 
end)

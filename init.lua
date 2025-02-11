-- install by downloading zip and double click spoon
-- https://github.com/Hammerspoon/Spoons/raw/master/Spoons/SpoonInstall.spoon.zip
hs.loadSpoon("SpoonInstall")

-- clipboard
spoon.SpoonInstall:installSpoonFromZipURL("https://github.com/Hammerspoon/Spoons/raw/master/Spoons/TextClipboardHistory.spoon.zip")
hs.loadSpoon("TextClipboardHistory")
spoon.TextClipboardHistory:start()
spoon.TextClipboardHistory:bindHotkeys({toggle_clipboard={{"cmd", "alt"}, "v", message="Show"}})


-- shiftit
spoon.SpoonInstall.repos.ShiftIt = {
   url = "https://github.com/peterklijn/hammerspoon-shiftit",
   desc = "ShiftIt spoon repository",
   branch = "master",
}
spoon.SpoonInstall:andUse("ShiftIt", { repo = "ShiftIt" })
spoon.ShiftIt:bindHotkeys({})

-- timestamp
local mash = { 'shift', 'cmd' }
local pasteboard = require('hs.pasteboard')
-- copy timestamp into clipboard, and type it out
hs.hotkey.bind({ 'shift', 'alt' }, 't', function()
  local d = os.date('%r')
  hs.eventtap.keyStrokes(d)
  pasteboard.setContents(d) 
end)

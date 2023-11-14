local spaces = require("hs.spaces") -- https://github.com/asmagill/hs._asm.spaces

hs.hotkey.bind({'option'}, 'space', function ()  -- hotkey config
  local BUNDLE_ID = 'net.kovidgoyal.kitty' -- more accurate to avoid mismatching on browser titles

  function getMainWindow(app)
    -- get main window from app
    local win = nil
    while win == nil do
      win = app:mainWindow()
    end
    return win
  end

  function moveWindow(kitty, space, mainScreen)
    -- move to main space
    local win = getMainWindow(kitty)
    if win:isFullScreen() then
      hs.eventtap.keyStroke('fn', 'f', 0, kitty)
    end
    winFrame = win:frame()
    scrFrame = mainScreen:fullFrame()
    winFrame.w = scrFrame.w
    winFrame.y = scrFrame.y
    winFrame.x = scrFrame.x
    win:setFrame(winFrame, 0)
    spaces.moveWindowToSpace(win, space)
    if win:isFullScreen() then
      hs.eventtap.keyStroke('fn', 'f', 0, kitty)
    end
    win:focus()
  end

  local kitty = hs.application.get(BUNDLE_ID)
  if kitty ~= nil and kitty:isFrontmost() then
    kitty:hide()
  else
    local space = spaces.activeSpaceOnScreen()
    local mainScreen = hs.screen.mainScreen()
    if kitty == nil and hs.application.launchOrFocusByBundleID(BUNDLE_ID) then
      local appWatcher = nil
      appWatcher = hs.application.watcher.new(function(name, event, app)
        if event == hs.application.watcher.launched and app:bundleID() == BUNDLE_ID then
          getMainWindow(app):move(hs.geometry({x=0,y=0,w=1,h=1}))
          app:hide()
          moveWindow(app, space, mainScreen)
          appWatcher:stop()
        end
      end)
      appWatcher:start()
    end
    if kitty ~= nil then
      moveWindow(kitty, space, mainScreen)
    end
  end
end)

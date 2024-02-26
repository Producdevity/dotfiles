usbWatcher = nil
appName = "Immersed"
-- Open and Close when Quest headset is commected and disconnected
function usbDeviceCallback(data)
  --   if string.match(data["productName"], "Quest") then
  if (data["productName"] == "Quest 3" or data["productName"] == "Quest Pro") then
    if (data["eventType"] == "added") then
      hs.application.launchOrFocus(appName)
    elseif (data["eventType"]k == "removed") then
      app = hs.appfinder.appFromName(appName)
      app:kill()
    end
  end
end

usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()

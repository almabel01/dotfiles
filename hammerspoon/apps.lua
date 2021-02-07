local log = hs.logger.new('hs','debug')

-- open app
function openApp(name)
  local wf=hs.window.filter.new(false)
  wf:setAppFilter(name, {visible=nil, currentSpace=nil})
  local app = hs.application.get(name)

  log.i('open App')
  log.i(name)

  if app then
    if app:isFrontmost() then
      log.i('app on top')
      local appWindows = wf:getWindows()
      if (#appWindows > 1) then
        appWindows[2]:focus() --If app on top then open the second most recent window of the app
      end
    else
      log.i('app not on top')
      app:mainWindow():focus()
    end
  else
    log.i('app launch')
    if (name == 'Code') then
      name = 'Visual Studio Code'
    end
    if (name == 'Safari') then
      name = 'Safari'
    end
    hs.application.launchOrFocus(name)
  end
end



hs.urlevent.bind('open1Password', function(eventName, params)
	openApp('1Password')
end)

hs.urlevent.bind('openObsidian', function(eventName, params)
  openApp('Obsidian') --done
end)

hs.urlevent.bind('openNotes', function(eventName, params)
  openApp('Notes') --done
end)

hs.urlevent.bind('openMessenger', function(eventName, params)
  openApp('Messenger') --done
end)

hs.urlevent.bind('openDiscord', function(eventName, params)
  openApp('Discord') --done
end)

-- hs.urlevent.bind('openFirefox', function(eventName, params)
--   openApp('Firefox') --done
-- end)

hs.urlevent.bind('openZotero', function(eventName, params)
  openApp('Zotero') --done
end)

hs.urlevent.bind('openFinder', function(eventName, params)
  openApp('Finder') --!! TODO
end)

hs.urlevent.bind('openCalendar', function(eventName, params)
  openApp('Calendar') --done
end)

hs.urlevent.bind('openSpark', function(eventName, params)
  openApp('Spark') --done
end)

-- hs.urlevent.bind('openTickTick', function(eventName, params)
--   openApp('TickTick') --done
-- end)

hs.urlevent.bind('openReminders', function(eventName, params)
  openApp('Reminders') --done
end)

hs.urlevent.bind('openTelegram', function(eventName, params)
  openApp('Telegram Lite') --done
end)

hs.urlevent.bind('openiTerm', function(eventName, params)
  openApp('iTerm') --done
end)

hs.urlevent.bind('openExcel', function(eventName, params)
  openApp('Microsoft Excel') --done
end)

hs.urlevent.bind('openWord', function(eventName, params)
  openApp('Microsoft Word') --done
end)

hs.urlevent.bind('openPowerPoint', function(eventName, params)
  openApp('Microsoft PowerPoint') --done
end)

hs.urlevent.bind('openSafari', function(eventName, params)
  openApp('Safari') --done
end)

hs.urlevent.bind('openVSCode', function(eventName, params)
  openApp('Code') --done
end)

hs.urlevent.bind('openSpotify', function(eventName, params)
  openApp('Spotify') --done
end)

hs.urlevent.bind('openPreview', function(eventName, params)
  openApp('Preview') --done
end)

hs.urlevent.bind('openPhotos', function(eventName, params)
  openApp('Photos') --done
end)

hs.urlevent.bind('openSettings', function(eventName, params)
  openApp('System Preferences') --done
end)

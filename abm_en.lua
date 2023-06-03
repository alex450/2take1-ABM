local feature = {}
local ABM = menu.get_feature_by_hierarchy_key("online.business.enable_manager")

menu.notify("ABM - Enabled",nil,5, 0x00FF00)
menu.notify("better loaded after other scripts",nil,5, 0x00FF00)
menu.notify("this lua does not have config file",nil,5, 0x00FF00)

-- if u enable this,which means u want this auto function
-- if u dont need it , just disable it
-- executed by Coroutine
local timer = require("timer")

-- check per 1 min
-- when bm is enabled,then this scirpt will stop
-- which has no extra costs
local function taskCoroutine()
  while true do
    if ABM.on == true then break end
    ABM.on = true
    timer.sleep(60000) -- 延迟60秒
  end
end

-- execute coroutine
local co = coroutine.create(taskCoroutine)
coroutine.resume(co)

local feature = {}
local ABM = menu.get_feature_by_hierarchy_key("online.business.enable_manager")

menu.notify("自动产业管理 - Enabled",nil,5, 0x00FF00)
menu.notify("查看本LUA直接修改参数,不需要配置文件",nil,5, 0x00FF00)
menu.notify("建议设置加载优先级在其他脚本之后",nil,5, 0x00FF00)

-- 如果你启用这个LUA 那就代表你想要这个功能 那你就不需要配置文件
-- 如果你不想自动开 那你就不需要启用这个LUA
-- 定义一个函数，用于定时执行的任务
local timer = require("timer")

-- 默认1分钟检测一次
-- 检测到产业管理开了就关，0额外开销
local function taskCoroutine()
  while true do
    if ABM.on == true then break end
    ABM.on = true
    timer.sleep(60000) -- 延迟60秒
  end
end

-- 启动协程
local co = coroutine.create(taskCoroutine)
coroutine.resume(co)

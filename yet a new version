ABM = menu.get_feature_by_hierarchy_key("online.business.enable_manager")


menu.notify("ABM - Enabled",nil,5, 0x00FF00)

function updatesi()
    while true do
    ABM.on=true
    system.wait(60000)
    end
    --system.wait(5000)
end

waosd=menu.create_thread(updatesi)

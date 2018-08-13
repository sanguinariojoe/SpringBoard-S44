local oldUIWidgets = {
    "1944 Tooltip Replacement", -- in both lists, reset
    "1944 Resource Bars",
    "Chili Pro Console2",
    "Simple player list",
}


return {
    startStop = {
        x = "48.5%",
        bottom = 80,
    },

    OnStopEditingUnsynced = function()
        -- Re-enable the widgets
        for _, widgetName in ipairs(oldUIWidgets) do
            widgetHandler:EnableWidget(widgetName)
        end
        -- And move back to the new UI
        widgetHandler:DisableWidget("1944 Enable/Disable Old UI")
    end,

    OnStartEditingUnsynced = function()
        -- Disable the whole new UI, falling back to the traditional UI
        widgetHandler:EnableWidget("1944 Enable/Disable Old UI")
        -- And disable its widgets
        for _, widgetName in ipairs(oldUIWidgets) do
            widgetHandler:DisableWidget(widgetName)
        end
        Spring.SendCommands("tooltip 0")
        Spring.SendCommands("resbar 0")
        gl.SlaveMiniMap(true)
    end,

    OnStartEditingSynced = function()
    end,
}

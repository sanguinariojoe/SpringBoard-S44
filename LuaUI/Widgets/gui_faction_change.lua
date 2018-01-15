
function widget:GetInfo()
    return {
        name    = 'Faction Change',
        desc    = 'Helper to override and disable the factions picker',
        author  = 'Jose Luis Cercos-Pita',
        date    = 'December 2017',
        license = 'GNU GPL v3',
        layer   = -100,
        enabled = true,
    }
end

--------------------------------------------------------------------------------
-- Callins
--------------------------------------------------------------------------------
function widget:Initialize()
    widgetHandler:RemoveWidget(self)
end

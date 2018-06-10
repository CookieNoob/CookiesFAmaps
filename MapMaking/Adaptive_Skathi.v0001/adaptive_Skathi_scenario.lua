version = 3
ScenarioInfo = {
    name = "Adaptive Skathi",
    description = "Map and script made by CookieNoob.",
    preview = '',
    map_version = 1,
    type = 'skirmish',
    starts = true,
    size = {1024, 1024},
    map = '/maps/adaptive_Skathi.v0001/adaptive_Skathi.scmap',
    save = '/maps/adaptive_Skathi.v0001/adaptive_Skathi_save.lua',
    script = '/maps/adaptive_Skathi.v0001/adaptive_Skathi_script.lua',
    norushradius = 40,
    Configurations = {
        ['standard'] = {
            teams = {
                {
                    name = 'FFA',
                    armies = {'ARMY_1', 'ARMY_2', 'ARMY_3', 'ARMY_4', 'ARMY_5', 'ARMY_6', 'ARMY_7', 'ARMY_8', 'ARMY_9', 'ARMY_10', 'ARMY_11', 'ARMY_12', 'ARMY_13', 'ARMY_14', 'ARMY_15', 'ARMY_16'}
                },
            },
            customprops = {
                ['ExtraArmies'] = STRING( 'ARMY_17 NEUTRAL_CIVILIAN' ),
            },
        },
    },
}

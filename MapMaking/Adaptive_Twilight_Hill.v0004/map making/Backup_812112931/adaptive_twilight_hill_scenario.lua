version = 3
ScenarioInfo = {
    name = 'Adaptive Twilight Hill',
    description = "When the seraphim arrived, they planted a few Liberiam crystals on this moon to free up ressources for their attacks in the nearby sectors. The coalition attacked this planet once, but due to the heavy lightning storms and jamming properties of the crystals, the assault armada got destroyed. The countless wrecks from the attack are now consumed by the unstoppable growth of the crystals. Map and script by CookieNoob.",
    preview = '',
    map_version = 1,
    type = 'skirmish',
    starts = true,
    size = {512, 512},
    map = '/maps/Adaptive_Twilight_Hill.v0003/Adaptive_Twilight_Hill.scmap',
    save = '/maps/Adaptive_Twilight_Hill.v0003/Adaptive_Twilight_Hill_save.lua',
    script = '/maps/Adaptive_Twilight_Hill.v0003/Adaptive_Twilight_Hill_script.lua',
    norushradius = 60,
    Configurations = {
        ['standard'] = {
            teams = {
                {
                    name = 'FFA',
                    armies = {'ARMY_1', 'ARMY_2', 'ARMY_3', 'ARMY_4', 'ARMY_5', 'ARMY_6', 'ARMY_7', 'ARMY_8', 'ARMY_9', 'ARMY_10', 'ARMY_11', 'ARMY_12', 'ARMY_13', 'ARMY_14', 'ARMY_15', 'ARMY_16'}
                },
            },
            customprops = {
                ['ExtraArmies'] = STRING( 'ARMY_17' ),
            },
        },
    },
}

version = 3 -- Lua Version. Dont touch this
ScenarioInfo = {
    name = "Adaptive Hilly Plateau",
    description = "This planet orbits its sun on an elliptical trajectory with a huge eccentricity which causes extreme differences in temperatures and makes it basically uninhabitable. However, the sufrace is covered with a sulphur-based lifeforms that extract rare materials from the abundant stones on the planet. All factions dispatched expedition troops to study the yet unknown mechanism used by these lifeforms. The Aeon reacted swiftly when they found out about the potential of these organisms and sent out an assault force in order to claim the planet for themselves. Today, a large Aeon base protects this planet. Many recent Aeon technologies are based on the discoveries made on this planet. Map adjusts for the playercount by choosing the appropriate mex distribution and allows for additional customization. Script and edit by CookieNoob. Reclaim edit by SupremeBurger",
    preview = '',
    map_version = 3,
    type = 'skirmish',
    starts = true,
    size = {512, 512},
    map = '/maps/adaptive_hilly_plateau.v0003/adaptive_hilly_plateau.scmap',
    save = '/maps/adaptive_hilly_plateau.v0003/adaptive_hilly_plateau_save.lua',
    script = '/maps/adaptive_hilly_plateau.v0003/adaptive_hilly_plateau_script.lua',
    norushradius = 45,
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

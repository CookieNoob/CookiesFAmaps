version = 3
ScenarioInfo = {
    name = 'Adaptive Wonder Open',
    description = 'Protected by metor craters, a small outpost was set up by the advancing UEF forces. Using this base as a foothold, covered operations were launched deep into the Aeon territory. These activities lead to the first large assault against this system. Just at the moment when the Aeon fleet jumped into the system a large solar flare deluded their sensors and they were unable to detect the base between the craters and had to retreat when the UEF reinforcements arrived. From this incident on, the base is called Wonder. Map adjusted for dynamical mex spawn and improved game options by CookieNoob. Map edit (reclaim, civ base) and fix (hover trees) by Spearhead1. Scripting help from KeyBlue.',
    type = 'skirmish',
    starts = true,
    size = {512, 512},
    map = '/maps/adaptive_wonder_open.v0002/adaptive_wonder_open.scmap',
    save = '/maps/adaptive_wonder_open.v0002/adaptive_wonder_open_save.lua',
    script = '/maps/adaptive_wonder_open.v0002/adaptive_wonder_open_script.lua',
    preview = '',
    map_version = 2,
    AdaptiveMap = true,
    norushradius = 40.000000,
    norushoffsetX_ARMY_1 = 0.000000,
    norushoffsetY_ARMY_1 = 0.000000,
    norushoffsetX_ARMY_2 = 0.000000,
    norushoffsetY_ARMY_2 = 0.000000,
    norushoffsetX_ARMY_3 = 0.000000,
    norushoffsetY_ARMY_3 = 0.000000,
    norushoffsetX_ARMY_4 = 0.000000,
    norushoffsetY_ARMY_4 = 0.000000,
    norushoffsetX_ARMY_5 = 0.000000,
    norushoffsetY_ARMY_5 = 0.000000,
    norushoffsetX_ARMY_6 = 0.000000,
    norushoffsetY_ARMY_6 = 0.000000,
    norushoffsetX_ARMY_7 = 0.000000,
    norushoffsetY_ARMY_7 = 0.000000,
    norushoffsetX_ARMY_8 = 0.000000,
    norushoffsetY_ARMY_8 = 0.000000,
    norushoffsetX_ARMY_9 = 0.000000,
    norushoffsetY_ARMY_9 = 0.000000,
    norushoffsetX_ARMY_10 = 0.000000,
    norushoffsetY_ARMY_10 = 0.000000,
    norushoffsetX_ARMY_11 = 0.000000,
    norushoffsetY_ARMY_11 = 0.000000,
    norushoffsetX_ARMY_12 = 0.000000,
    norushoffsetY_ARMY_12 = 0.000000,
    Configurations = {
        ['standard'] = {
            teams = {
                { 
					name = 'FFA', 
					armies = {'ARMY_1','ARMY_2','ARMY_3','ARMY_4','ARMY_5','ARMY_6','ARMY_7','ARMY_8','ARMY_9','ARMY_10','ARMY_11','ARMY_12','ARMY_13','ARMY_14','ARMY_15','ARMY_16',}
				},
            },
            customprops = {
                ['ExtraArmies'] = STRING( 'ARMY_17 NEUTRAL_CIVILIAN' ),
            },
        },
    }
}
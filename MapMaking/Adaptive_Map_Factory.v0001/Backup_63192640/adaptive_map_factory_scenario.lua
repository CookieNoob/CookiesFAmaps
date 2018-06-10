version = 3
ScenarioInfo = {
    name = 'Adaptive Map Factory',
    description = '',
    type = 'skirmish',
    starts = true,
    preview = '',
    size = {1024, 1024},
    map = '/maps/Adaptive_Map_Factory.v0001/Adaptive_Map_Factory.scmap',
    save = '/maps/Adaptive_Map_Factory.v0001/Adaptive_Map_Factory_save.lua',
    script = '/maps/Adaptive_Map_Factory.v0001/Adaptive_Map_Factory_script.lua',
    norushradius = 0.000000,
    Configurations = {
        ['standard'] = {
            teams = {
                { name = 'FFA', armies = {'ARMY_1','ARMY_2','ARMY_3','ARMY_4','ARMY_5','ARMY_6','ARMY_7','ARMY_8','ARMY_9','ARMY_10','ARMY_11','ARMY_12','ARMY_13','ARMY_14','ARMY_15','ARMY_16',} },
            },
            customprops = {
                ['ExtraArmies'] = STRING( 'ARMY_17' ),
            },
        },
    }}

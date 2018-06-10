options ={

{
    default = 1,
    label = "<LOC adaptive_dynamic_spawn_label> Dynamic Spawn Of Resources",
    help = "<LOC adaptive_dynamic_spawn_help> Determine which mexes & hydros should be spawned.",
    key = 'dynamic_spawn',
    pref = 'dynamic_spawn',
    values = {
        { text = "<LOC adaptive_dynamic_spawn_key_1_label> mirror slots", help = "<LOC adaptive_dynamic_spawn_key_1_help> Spawn resources for player & mirror slot (balanced resources).", key = 1, },
        { text = "<LOC adaptive_dynamic_spawn_key_2_label> used slots", help = "<LOC adaptive_dynamic_spawn_key_2_help> Only spawn resources for player on used slots (unbalanced resources).", key = 2, },
        { text = "<LOC adaptive_dynamic_spawn_key_3_label> no mirror = no resources", help = "<LOC adaptive_dynamic_spawn_key_3_help> Only spawn resources if mirror slot is also occupied by a player (not recommended, but it can make uneven matches fairer).", key = 3, },
        -- { text = "<LOC adaptive_dynamic_spawn_key_4_label> 2v2 setup", help = "<LOC adaptive_dynamic_spawn_key_4_help> Don't adjust for player & spawn resources for 2v2.", key = 4, },
        { text = "<LOC adaptive_dynamic_spawn_key_5_label> 4v4 setup", help = "<LOC adaptive_dynamic_spawn_key_5_help> Don't adjust for player & spawn resources for 4v4.", key = 5, },
        -- { text = "<LOC adaptive_dynamic_spawn_key_6_label> 6v6 setup", help = "<LOC adaptive_dynamic_spawn_key_6_help> Don't adjust for player & spawn resources for 6v6.", key = 6, },
        -- { text = "<LOC adaptive_dynamic_spawn_key_7_label> 8v8 setup", help = "<LOC adaptive_dynamic_spawn_key_7_help> Don't adjust for player & spawn resources for maximum player count.", key = 7, },
    },
},

{
    default = 1,
    label = "<LOC adaptive_crazyrush_label> Crazyrush",
    help = "<LOC adaptive_crazyrush_help> Activate different types of crazyrush* for the spawned mexes. *Building a mex on a mass point will always create new adjacent mass points to build on.",
    key = 'crazyrush_mexes',
    pref = 'crazyrush_mexes',
    values = {
        { text = "<LOC adaptive_disabled> disabled", help = "<LOC adaptive_crazyrush_key_1_help> No crazyrush.", key = 1, },
        { text = "<LOC adaptive_crazyrush_key_2_label> crazyrush forward mexes", help = "<LOC adaptive_crazyrush_key_2_help> Activate crazyrush only for some central mexes. All other mexes will behave normally.", key = 2, },
        { text = "<LOC adaptive_crazyrush_key_3_label> crazyrush 1 core mex", help = "<LOC adaptive_crazyrush_key_3_help> Activate crazyrush & spawn only 1 core mex per active slot.", key = 3, },
        { text = "<LOC adaptive_crazyrush_key_4_label> crazyrush", help = "<LOC adaptive_crazyrush_key_4_help> Activate crazyrush for all spawned mexes.", key = 4, },
    },
},

{
    default = 1,
    label = "<LOC adaptive_regrowing_label> Regrowing Trees",
    help = "<LOC adaptive_regrowing_help> Regrow reclaimed/destroyed trees when other trees are nearby. Regrow is faster if more trees are close.",
    key = 'TreeRegrowSpeed',
    pref = 'TreeRegrowSpeed',
    values = {
        { text = "<LOC adaptive_disabled> disabled", help = "<LOC adaptive_regrowing_key_1_help> No regrowing trees.", key = 1, },
        { text = "<LOC adaptive_regrowing_key_2_label> fast", help = "<LOC adaptive_regrowing_key_2_help> Regrow trees faster.", key = 2, },
        { text = "<LOC adaptive_enabled> enabled", help = "<LOC adaptive_regrowing_key_3_help> Regrow trees.", key = 3, },
        { text = "<LOC adaptive_regrowing_key_4_label> slow", help = "<LOC adaptive_regrowing_key_4_help> Regrow trees slower.", key = 4, },
    },
},

{
    default = 3,
    label = "<LOC adaptive_middle_mex_label> Middle Mexes",
    help = "<LOC adaptive_middle_mex_help> Configure the amount of mexes at the middle of the map.",
    key = 'middle_mexes',
    pref = 'middle_mexes',
    values = {
		-- there are translations prepared for up to 9 mex.
        { text = "0", help = "<LOC adaptive_middle_mex_key_0_help> No additional mexes in the middle.", key = 1, }
        { text = "2", help = "<LOC adaptive_middle_mex_key_2_help> Spawn 2 mexes in the middle.", key = 2, },
        { text = "4", help = "<LOC adaptive_middle_mex_key_4_help> Spawn 4 mexes in the middle.", key = 3, },
        { text = "6", help = "<LOC adaptive_middle_mex_key_6_help> Spawn 6 mexes in the middle.", key = 4, },
    },
},

{
    default = 2,
    label = "<LOC adaptive_side_mex_label> Side Mexes",
    help = "<LOC adaptive_side_mex_help> Configure the amount of mexes at the sides of the map.",
    key = 'side_mexes',
    pref = 'side_mexes',
    values = {
		-- there are translations prepared for up to 9 mex per side, so 18 mex in total.
        { text = "0", help = "<LOC adaptive_side_mex_key_0_help> No additional mexes at the side.", key = 1, },
        { text = "1", help = "<LOC adaptive_side_mex_key_1_help> Spawn 2 mexes, 1 on each side.", key = 2, },
        { text = "2", help = "<LOC adaptive_side_mex_key_2_help> Spawn 4 mexes, 2 on each side.", key = 3, },
    },
},

{
    default = 2,
    label = "<LOC adaptive_wreckage_label> Wreckage",
    help = "<LOC adaptive_wreckage_help> Scale amount of unit wrecks.",
    key = 'optional_wreckage',
    pref = 'optional_wreckage',
    values = {
        { text = "<LOC adaptive_disabled> disabled", help = "<LOC adaptive_wreckage_key_1_help> No land/air wrecks.", key = 1, },
        { text = "<LOC adaptive_wreckage_key_2> T1 wrecks", help = "<LOC adaptive_wreckage_key_2_help> Add T1 wrecks.", key = 2, },
        { text = "<LOC adaptive_wreckage_key_3> T2 wrecks", help = "<LOC adaptive_wreckage_key_3_help> Add T2 wrecks to T1.", key = 3, },
        { text = "<LOC adaptive_wreckage_key_4> T3 wrecks", help = "<LOC adaptive_wreckage_key_4_help> Add T3 wrecks to T1 & T2.", key = 4, },
        { text = "<LOC adaptive_wreckage_key_5> T4 wreck", help = "<LOC adaptive_wreckage_key_5_help> Add Fatboy wreck to T1, T2 & T3.", key = 5, },
    },
},

{
    default = 1,
    label = "Civ. base middle",
    help = "Adds a civilian base with different levels of defences to the middle of the map.",
    key = 'optional_civilian_base_middle',
    pref = 'optional_civilian_base_middle',
    values = {
        { text = "disabled", help = "Do not add a civilian base to the middle of the map.", key = 1},
        { text = "no defences", help = "Adds a civilian base to the middle of the map.", key = 2},              
        { text = "t1 defences", help = "Adds a civilian base with t1 defencive structures to the middle of the map.", key = 3},
        { text = "t2 defences", help = "Adds a civilian base with t2 defencive structures to the middle of the map.", key = 4},
        { text = "t3 defences", help = "Adds a civilian base with t2 defencive structures and sams to the middle of the map.", key = 5},
        { text = "t3 def + t2 arty", help = "Adds a civilian base with t2 defencive structures, t2 static arty and sams to the middle of the map.", key = 6},
    },
},
{
    default = 1,
    label = "Civ. base middle shield",
    help = "Determines the amount of shielding for the base in the middle. This option only takes effect when there is a civilian base in the middle.",
    key = 'optional_civilian_base_middle_shields',
    pref = 'optional_civilian_base_middle_shields',
    values = {
        { text = "disabled", help = "The base in the middle is unshielded.", key = 1},
        { text = "some shields", help = "Adds a few t2 shields to the base in the middle.", key = 2},              
        { text = "more shields", help = "Adds a few t2 shields and t3 shields to the base in the middle.", key = 3},
        { text = "extreme shields", help = "Adds a few t2 shields and a large siege shield to the base in the middle.", key = 4},
    },
},

{
    default = 1,
    label = "Civ. base side",
    help = "Adds a civilian base with different levels of defences to the middle of the map",
    key = 'optional_civilian_base_side',
    pref = 'optional_civilian_base_side',
    values = {
        { text = "disabled", help = "Do not add a civilian base to the side of the map", key = 1},
        { text = "no defences", help = "Adds a civilian base to the side of the map.", key = 2},              
        { text = "t1 defences", help = "Adds a civilian base with t1 defencive structures to the side of the map.", key = 3},
        { text = "t2 defences", help = "Adds a civilian base with t2 defencive structures to the side of the map.", key = 4},
        { text = "t3 defences", help = "Adds a civilian base with t2 defencive structures and sams to the side of the map.", key = 5},
    },
},
{
    default = 1,
    label = "civ. base side shield",
    help = "determines the amount of shielding for the base in the side. This option only takes effect when there is a civilian base on the side.",
    key = 'optional_civilian_base_side_shields',
    pref = 'optional_civilian_base_side_shields',
    values = {
        { text = "disabled", help = "The base on the side is unshielded.", key = 1},
        { text = "some shields", help = "Adds a few t2 shields to the base on the side.", key = 2},              
        { text = "more shields", help = "Adds a few t2 shields and t3 shields to the base on the side.", key = 3},
    },
},

{
    default = 5,
    label = "<LOC adaptive_natural_modifier_label> Natural Reclaim Values",
    help = "<LOC adaptive_natural_modifier_help> Change mass & energy values of rock & tree props.",
    key = 'naturalReclaimModifier',
    pref = 'naturalReclaimModifier',
    values = {
        --not defined via adaptive script, just determine value via key
        { text = "<LOC adaptive_natural_modifier_key_300_label> 300 percent", help = "<LOC adaptive_natural_modifier_key_300_help> Mass & energy values are 3 times higher.", key = 3, },
        { text = "<LOC adaptive_natural_modifier_key_200_label> 200 percent", help = "<LOC adaptive_natural_modifier_key_200_help> Mass & energy values are 2 times higher.", key = 2, },
        { text = "<LOC adaptive_natural_modifier_key_150_label> 150 percent", help = "<LOC adaptive_natural_modifier_key_150_help> Mass & energy values are 1.5 times higher.", key = 1.5, },
        { text = "<LOC adaptive_natural_modifier_key_125_label> 125 percent", help = "<LOC adaptive_natural_modifier_key_125_help> Mass & energy values are 1.25 times higher.", key = 1.25, },
        { text = "<LOC adaptive_natural_modifier_key_100_label> 100 percent", help = "<LOC adaptive_natural_modifier_key_100_help> Don't change the mass & energy values.", key = 1, },
        { text = "<LOC adaptive_natural_modifier_key_75_label> 75 percent", help = "<LOC adaptive_natural_modifier_key_75_help> Mass & energy values are 0.75 times lower.", key = 0.75, },
        { text = "<LOC adaptive_natural_modifier_key_50_label> 50 percent", help = "<LOC adaptive_natural_modifier_key_50_help> Mass & energy values are 0.5 times lower.", key = 0.5, },
        { text = "<LOC adaptive_natural_modifier_key_25_label> 25 percent", help = "<LOC adaptive_natural_modifier_key_25_help> Mass & energy values are 0.25 times lower.", key = 0.25, },
        { text = "<LOC adaptive_natural_modifier_key_0_label> 0 percent", help = "<LOC adaptive_natural_modifier_key_0_help> Remove Mass & energy values from rock & tree props.", key = 0, },
    },
},

--[[
{
    default = 2,
    label = "Civilian Base",
    help = "Spawn a civilian base in the middle.",
    key = 'optional_civilian_base',
    pref = 'optional_civilian_base',
    values = {
        { text = "enabled - t1 defences", help = "Spawn the usual civilian base in the middle with some t1 point defences.", key = 2, },
        { text = "enabled - something", help = "Spawns something xD dunno what exactly.", key = 3, },        
        { text = "disabled", help = "Spawn no civilians.", key = 1, },
    },
},


{
    default = 1,
    label = "additional hydros",
    help = "additional hydros on side hills",
    key = 'hydroplus',
    pref = 'hydroplus',
    values = {
        { text = "disabled", help = "Only spawn a hydro for the air players.", key = 1, },
        { text = "enabled", help = "Spawn a hydro for every player.", key = 2, },
    },
},




{
    default = 1,
    label = "additional reclaim - side",
    help = "add wrecks to the side of the map",
    key = 'optional_reclaim_side',
    pref = 'optional_reclaim_side',
    values = {
        { text = "no reclaim", help = "Do not add additional reclaim on the sides.", key = 1, },
        { text = "battleship", help = "Add one battleship to the side cliff.", key = 2, },
    },
},
{
    default = 1,
    label = "additional reclaim - middle",
    help = "add wrecks to the middle of the map",
    key = 'optional_reclaim_middle',
    pref = 'optional_reclaim_middle',
    values = {
        { text = "no reclaim", help = "Do not add additional reclaim on the sides.", key = 1, },
        { text = "missileship", help = "Add a missileship to the middle of the map.", key = 2, },
    },
},
]]--

};
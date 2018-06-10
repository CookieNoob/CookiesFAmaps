options ={


{
    default = 1,
    label = "dynamic spawn of mexes",
    help = "Enable the mex spawn algorithm to adjust the map to the player count",
    key = 'automex',
    pref = 'automex',
    values = {
        { text = "enabled", help = "map adjust automatically for the playercount", key = 1, },
        { text = "disabled - 4v4 mex", help = "Map will not adjust for players and will spawn the mexes of the four usual players and their expansions. Use the spots 1-8", key = 2, },
        { text = "disabled - all mex", help = "Map will not adjust for players and will spawn the all mexes", key = 3, },
        { text = "enabled - crazyrush 1 mex", help = "Map will activate the crazyrush script and spawn 1 starting mex for all players.", key = 6, },
        { text = "enabled - crazyrush", help = "Map will activate the crazyrush script.", key = 7, },
    },
},

{
	default = 2,
	label = "reclaim",
	help = "add groups of wrecks to the map",
	key = 'optional_reclaim',
	pref = 'optional_reclaim',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim in the sides of the map", key = 1, },
		{ text = "stratbomber", help = "Add the default wreckage to the map (i.e. stratbomber wreck and some smaller wrecks on the sides).", key = 2, },
		{ text = "t1 navy", help = "Add some frigates to the beaches of the map. The stratbomber group will not be present.", key = 3, },
		{ text = "t1/t2 navy", help = "Add in addition to the frigates also some destroyer to the shores. The stratbomber group will not be present.", key = 4, },
		{ text = "t1/t2 navy+stratbomber", help = "Add the default wreckage and the t1/t2 navy wrecks.", key = 5, },
		{ text = "ahwassa", help = "Add a crashlanded Ahwassa to the center of the map.", key = 6, },
		{ text = "ahwassa+navy+strat", help = "Add an Ahwassa, a stratbomber on the sides and t1/t2 navy wreckage.", key = 7, },
	},
},

{
	default = 1,
	label = "additional mex",
	help = "Spawns one additional mex for each present player in the starting base.",
	key = 'additionalMex',
	pref = 'additionalMex',
	values = {
		{ text = "disabled", help = "Spawn the usual ressources.", key = 1, },
		{ text = "enabled", help = "Spawns one additional mex per player.", key = 2, },
	},
},

{
    default = 1,
    label = "regrowing trees",
    help = "Regrow reclaimed trees slowly when there are still other trees around. If there are more trees close, they regrow faster.",
    key = 'tree',
    pref = 'tree',
    values = {
        { text = "disabled", help = "Dont regrow trees.", key = 1, },
        { text = "enabled - faster", help = "Regrow trees faster.", key = 2, },
        { text = "enabled", help = "Regrow trees.", key = 3, },
        { text = "enabled - slower", help = "Regrow trees slower.", key = 4, },
    },
},

{
    default = 5,
    label = "change natural reclaim",
    help = "Changes the amount of mass and energy in rocks and trees on the map.",
    key = 'naturalReclaimModifier',
    pref = 'naturalReclaimModifier',
    values = {
        { text = "3 times higher", help = "Enhances the reclaim by a factor of 3.", key = 3, },
        { text = "2 times higher", help = "Enhances the reclaim by a factor of 2.", key = 2, },
        { text = "1.5 times higher", help = "Enhances the reclaim by a factor of 1.5.", key = 1.5, },
        { text = "1.25 times higher", help = "Enhances the reclaim by a factor of 1.25.", key = 1.25, },
        { text = "disabled", help = "Doesnt change the reclaim values.", key = 1, },
        { text = "0.8 times lower", help = "Removes 20 percent of the mass in rocks.", key = 0.8, },
        { text = "0.6 times lower", help = "Removes 40 percent of the mass in rocks.", key = 0.6, },
        { text = "0.4 times lower", help = "Removes 60 percent the mass in rocks.", key = 0.4, },
        { text = "0.2 times lower", help = "Removes 80 percent the mass in rocks.", key = 0.2, },
    },
},

{
    default = 4,
    label = "additional underwatermex",
    help = "additional sidemex in both oceans.",
    key = 'underwatermex',
    pref = 'underwatermex',
    values = {
        { text = "enabled - more mex", help = "Spawn 6 additional mexes in the water around the islands.", key = 1, },
        { text = "enabled", help = "Spawn 4 additional mexes in the water around the islands.", key = 2, },
        { text = "enabled - fewer mex", help = "Spawn 2 additional mexes in the water around the islands.", key = 3, },
        { text = "disabled", help = "Spawn no additional mexes in the water around the islands.", key = 4, },
    },
},

{
    default = 3,
    label = "number middlemex",
    help = "configure the amount of mexes in the middle region of the map.",
    key = 'middlemex',
    pref = 'middlemex',
    values = {
        { text = "enabled - more mex", help = "Spawn 4 additional mexes in the middle.", key = 1, },
        { text = "enabled", help = "Spawn 2 additional mexes in the middle.", key = 2, },
        { text = "disabled", help = "Spawn no additional mexes in the middle.", key = 3, }
    },
},

{
    default = 1,
    label = "forward crazyrush mex",
    help = "makes a few mexes behave like crazyrush mexes.",
    key = 'dupicatesinglemex',
    pref = 'dupicatesinglemex',
    values = {
        { text = "disabled", help = "All mexes behave normally.", key = 1, },
        { text = "enabled", help = "Some expansion mex split into multiple mexes.", key = 2, },
    },
},

{
    default = 3,
    label = "number sidemex",
    help = "configure the amount of mexes on the sides of the map (behind the rock position).",
    key = 'sidemex',
    pref = 'sidemex',
    values = {
        { text = "enabled - more mex", help = "Spawn 2 additional mexes on each large island.", key = 1, },
        { text = "enabled", help = "Spawn 1 additional mex on each large island.", key = 2, },
        { text = "disabled", help = "Spawn no additional mex on the side.", key = 3, },
    },
},

{
	default = 1,
	label = "civilians (side)",
	help = "Spawn a civilian base on the side islands.",
	key = 'optional_civilian_base_side',
	pref = 'optional_civilian_base_side',
	values = {
        { text = "disabled", help = "Spawn no civilians.", key = 1, },
		{ text = "enabled", help = "Spawns a small undefended base on the sides.", key = 2, },
		{ text = "t1 defences", help = "Spawns a small base with t1 point defences on the sides.", key = 3, },   
		{ text = "t1 defences + shields", help = "Spawns a small base with t1 point defences and a shield on the sides.", key = 4, },  
		{ text = "t2 defences", help = "Spawns a small base with t2 point defences on the sides.", key = 5, },   
		{ text = "t2 defences + shields", help = "Spawns a small base with t2 point defences and a shield on the sides.", key = 6, },  
        
    },
},

{
	default = 1,
	label = "civilians (middle)",
	help = "Spawns a half destroyed civilian base in the middle of the map.",
	key = 'optional_civilian_base_middle',
	pref = 'optional_civilian_base_middle',
	values = {
        { text = "disabled", help = "Spawn no civilians.", key = 1, },
		{ text = "enabled", help = "Spawns a half destroyed base in the middle of the map", key = 2, },
		{ text = "t1 defences", help = "Spawns a half destroyed base with basic defencive abilities in the middle of the map", key = 3, },        
    },
},

{
    default = 1,
    label = "mirror spots",
    help = "Only spawn ressources when mirror spots are taken",
    key = 'mirrormex',
    pref = 'mirrormex',
    values = {
        { text = "disabled", help = "Spawn mex for players that dont have a mirror. The empty mirror spot will also spawn its mex.", key = 1, },
        { text = "enabled", help = "Only spawn mex/hydro when opposing spot is also taken. This option is not recommended, however it can make uneven matches fairer.", key = 2, },

    },
},

--[[

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

]]--

};
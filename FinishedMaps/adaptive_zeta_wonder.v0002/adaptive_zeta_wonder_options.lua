options ={

{
	default = 1,
	label = "Auto adjust to player count",
	help = "Enable the mex spawn algorithm to adjust the map to the player count",
	key = 'automex',
	pref = 'automex',
	values = {
		{ text = "enabled", help = "Map adjust automatically for the playercount", key = 1, },
		{ text = "disabled - 4v4 mex", help = "Map will not adjust for players and will spawn the mexes of the four main base players and their expansions. The map will look similar to Wonder 4v4.", key = 2, },
		{ text = "disabled - 4v4NA mex", help = "Map will not adjust for players and will spawn the mexes of the four main base players and their expansions. The air position will stay empty. The map will look similar to Wonder NA 4v4.", key = 3, },
		{ text = "disabled - 5v5 mex", help = "Map will not adjust for players and will spawn the mexes of the five main base players and their expansions. The map will look similar to New Zeta Wonder 5v5.", key = 4, },
		{ text = "disabled - all mex", help = "Map will not adjust for players and will spawn all mexes and hydros.", key = 5, },
		{ text = "enabled - crazyrush 1 mex", help = "Map will adjust for players and will spawn 1 mex per player and the hydro. The mex will multiply when an extractor is build on it.", key = 6, },
		{ text = "enabled - crazyrush", help = "Map will activate the crazyrush script.", key = 7, },        
	},
},

{
	default = 1,
	label = "number plateau mex",
	help = "Only spawn ressources when player spawns on the side.",
	key = 'mexplat',
	pref = 'mexplat',
	values = {
		{ text = "enabled", help = "Spawn mex/hydro when spot is taken (on both sides) otherwise there will be only 1 mex on the plateau", key = 1, },
		{ text = "disabled - spawn always", help = "Always spawn mex/hydro", key = 2, },
	},
},

{
	default = 1,
	label = "number back mex",
	help = "Only spawn ressources when player spawns in the back.",
	key = 'backmex',
	pref = 'backmex',
	values = {
		{ text = "enabled - more mex", help = "Spawn mex/hydro when spot is taken (on both sides)", key = 1, },
		{ text = "disabled - spawn always", help = "Always spawn mex of the back player.", key = 2, },
        { text = "enabled", help = "Spawn less mex for the back player (4 instead of 6)", key = 3, },
        { text = "enabled - less mex", help = "Spawn less mex for the back player (2 instead of 6)", key = 4, },        
	},
},

{
	default = 1,
	label = "number middle mex",
	help = "Adjust the number of mexes in the middle",
	key = 'middlemex',
	pref = 'middlemex',
	values = {
		{ text = "enabled", help = "2 mex in the middle.", key = 1, },
		{ text = "enabled - more mass", help = "4 mex in the middle.", key = 2, },
		{ text = "disabled", help = "No mex in the middle.", key = 3, },
	},
},

{
	default = 1,
	label = "number side middle mex",
	help = "Adjust the number of mexes in the middle",
	key = 'mexside',
	pref = 'mexside',
	values = {
		{ text = "enabled", help = "1 mex in the middle on the sides.", key = 1, },
		{ text = "enabled - more mass", help = "2 mex in the middle on the sides.", key = 2, },
		{ text = "disabled", help = "No mex in the middle on the sides.", key = 3, },
	},
},

{
	default = 1,
	label = "reclaim - middle",
	help = "add groups of wrecks to the middle of the map",
	key = 'optional_reclaim_middle',
	pref = 'optional_reclaim_middle',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim in the middle of the map", key = 1, },
		{ text = "small t1 force", help = "Adds some t1 units to the middle.", key = 2, },
		{ text = "omni", help = "Adds an omni sensor and 2 loyalists to the middle.", key = 3, },
		{ text = "some air units", help = "Adds some gunships and asf wrecks to the middle of the map.", key = 4, },
		{ text = "megabot", help = "Adds a megabot wreck and some percevals to the middle of the map.", key = 5, },
	},
},

{
	default = 1,
	label = "reclaim - side",
	help = "add groups of wrecks to the side of the map",
	key = 'optional_reclaim_side',
	pref = 'optional_reclaim_side',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim in the middle of the map", key = 1, },
		{ text = "small t1 force", help = "Adds an small group of t1 units to both sides of the map", key = 2, },
		{ text = "medium t2 force", help = "Adds an group of t2 units to both sides of the map", key = 3, },
		{ text = "medium t3 force", help = "Adds an group of t3 units to both sides of the map", key = 4, },
	},
},

{
	default = 1,
	label = "civilian base",
	help = "adds a civilian base with different levels of defences to the middle of the map",
	key = 'optional_civ_base',
	pref = 'optional_civ_base',
	values = {
		{ text = "disabled", help = "Do not add civilian bases.", key = 1, },
		{ text = "no defences", help = "Adds two civilian bases to the cliff in the middle.", key = 2, },    
		{ text = "no defences+shields", help = "Adds two shielded civilian bases to the cliff in the middle.", key = 3, },            
		{ text = "t1 defences", help = "Adds two civilian bases with t1 defencive structures to the cliff in the middle.", key = 4, },
		{ text = "t1 defences+shields", help = "Adds two shielded civilian bases with t1 defencive structures to the cliff in the middle.", key = 5, },
        { text = "t2 defences", help = "Adds two civilian bases with t2 defencive structures to the cliff in the middle.", key = 6},
        { text = "t2 defences+shields", help = "Adds two shielded civilian bases with t2 defencive structures to the cliff in the middle.", key = 7},
        { text = "t3 defences", help = "Adds two civilian bases with t2 and t3 defencive structures and t2 static arty to the cliff in the middle.", key = 8},
        { text = "t3 defences+shields", help = "Adds two shielded civilian bases with t2 and t3 defencive structures and t2 static arty to the cliff in the middle.", key = 9},
	},
},

{
	default = 1,
	label = "regrowing trees",
	help = "Regrow reclaimed trees slowly when there are still other trees around. If there are more trees close, they regrow faster. This requires a good cpu!",
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
	default = 1,
	label = "mirror spots",
	help = "Only spawn ressources when mirror spots are taken",
	key = 'mirrormex',
	pref = 'mirrormex',
	values = {
		{ text = "disabled", help = "Always spawn mex/hydro when spot is taken (for both players)", key = 1, },
		{ text = "enabled", help = "only spawn mex/hydro when opposing spot is also taken (not recommended)", key = 2, },
	},
},

};
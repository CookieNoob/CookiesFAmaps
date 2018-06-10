options ={

{
	default = 1,
	label = "dynamic spawn of mexes",
	help = "Enable the mex spawn algorithm to adjust the map to the player count",
	key = 'automex',
	pref = 'automex',
	values = {
		{ text = "enabled", help = "Map adjust automatically for the playercount", key = 1, },
		{ text = "disabled hilly 4v4", help = "Map will not adjust for players and will spawn the mexes of the four main base players and their expansions. The map will look similar to Hilly Plateau 4v4.", key = 2, },
		{ text = "disabled hilly 6v6", help = "Map will not adjust for players and will spawn the mexes of the six main base players and their expansions. The map will look similar to Hilly Plateau 6v6.", key = 3, },
		{ text = "disabled all mexes", help = "Map will not adjust for players and will spawn all mexes and hydros.", key = 4, },        
        { text = "enabled - crazyrush", help = "Map will adjust for players and will spawn mexes and hydros for each player. The mexes show the same behavior as crazyrush mex and multiply after an extractor has been build on them.", key = 6, }, 
        { text = "enabled - 1 mex crazyrush", help = "Map will adjust for players and will spawn ONE mex per player and hydros for each player. The mexes show the same behavior as crazyrush mex and multiply after an extractor has been build on them.", key = 7, }, 
	},
},

{
	default = 1,
	label = "number side mex (corner)",
	help = "Only spawn ressources when player spawns on the side.",
	key = 'mexside',
	pref = 'mexside',
	values = {
		{ text = "enabled", help = "Spawn mex/hydro when spot is taken (on both sides)", key = 1, },
		{ text = "spawn always", help = "Always spawn mex/hydro", key = 2, },
		{ text = "spawn never", help = "Never spawn the additional group of mexes at the sides.", key = 3, },
	},
},

{
	default = 1,
	label = "number side mex (middle)",
	help = "Only spawn ressources when player spawns on the side.",
	key = 'lanemex',
	pref = 'lanemex',
	values = {
		{ text = "disabled", help = "Dont spawn additional sidemex", key = 1, },
		{ text = "enabled - less mex", help = "spawn one additional sidemex", key = 2, },
		{ text = "enabled", help = "spawn two additional sidemex", key = 3, },
		{ text = "enabled - more mex", help = "spawn four additional sidemex", key = 4, },
	},
},

{
	default = 1,
	label = "number back mex",
	help = "Only spawn ressources when player spawns in the back.",
	key = 'backmex',
	pref = 'backmex',
	values = {
		{ text = "enabled", help = "Spawn mex/hydro when spot is taken (on both sides)", key = 1, },
		{ text = "disabled - spawn always", help = "Always spawn mex of the back player.", key = 2, },
	},
},

{
	default = 1,
	label = "additional mex",
	help = "Spawns one additional mex for each present player in the starting base.",
	key = 'additionalmex',
	pref = 'additionalmex',
	values = {
		{ text = "disabled", help = "Spawn the usual ressources.", key = 1, },
		{ text = "enabled", help = "Spawns one additional mex per player.", key = 2, },
	},
},
    
{
	default = 1,
	label = "additional reclaim",
	help = "add groups of wrecks to the middle and the sides of the map",
	key = 'optional_reclaim_middle',
	pref = 'optional_reclaim_middle',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim in the middle of the map", key = 1, },
		{ text = "some reclaim", help = "Add a group of some mixed t1/t2 units on the middle and the sides of the map", key = 2, },
		{ text = "more reclaim", help = "Add some t3 units on the sides (titan + loyalist)", key = 3, },
		{ text = "a lot of reclaim", help = "Add 4 crashlanded stratbomber and 2 t3 gunships to the middle and the sides.", key = 4, },
        { text = "Megabots", help = "Add two megabots to the middle. Use this with the t2 civilians to reduce the insanity of this option.", key = 5, }
	},
},

{
	default = 1,
	label = "civ. base middle",
	help = "adds a civilian base with different levels of defences to the middle of the map",
	key = 'optional_civ_base_mid',
	pref = 'optional_civ_base_mid',
	values = {
		{ text = "disabled", help = "Do not add a civilian base to the middle of the map", key = 1, },
		{ text = "no defences", help = "Adds a civilian base to the middle of the map.", key = 2, },    
		{ text = "no defences+shields", help = "Adds a shielded civilian base to the middle of the map.", key = 3, },            
		{ text = "t1 defences", help = "Adds a civilian base with t1 defencive structures to the middle of the map.", key = 4, },
		{ text = "t1 defences+shields", help = "Adds a shielded civilian base with t1 defencive structures to the middle of the map.", key = 5, },
        { text = "t2 defences", help = "Adds a civilian base with t2 defencive structures to the middle of the map.", key = 6},
        { text = "t2 defences+shields", help = "Adds a shielded civilian base with t2 defencive structures to the middle of the map.", key = 7},
	},
},

{
	default = 1,
	label = "heavy defences middle",
	help = "adds a walls to the civilian base in the middle to slow down landunits",
	key = 'optional_civ_base_walls',
	pref = 'optional_civ_base_walls',
	values = {
		{ text = "disabled", help = "Do not add walls to the civilian base in the middle", key = 1, },
		{ text = "walls", help = "Add massive fortifications", key = 2, },    
		{ text = "huge shield", help = "Adds a massive shield", key = 3, },    
		{ text = "walls + shield", help = "Adds a massive shield and large amounts of walls", key = 4, },    
    },
},

{
	default = 1,
	label = "civ. base side",
	help = "adds two civilian bases with different levels of defences on the sides of the map.",
	key = 'optional_civ_base_side',
	pref = 'optional_civ_base_side',
	values = {
		{ text = "disabled", help = "Do not add a civilian base to the side of the map", key = 1, },
		{ text = "no defences", help = "Adds a civilian base to the side of the map.", key = 2, },             
		{ text = "t1 defences", help = "Adds a civilian base with t1 defencive structures to the side of the map.", key = 3, },
        { text = "t2 defences", help = "Adds a civilian base with t2 defencive structures to the side of the map.", key = 4},
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

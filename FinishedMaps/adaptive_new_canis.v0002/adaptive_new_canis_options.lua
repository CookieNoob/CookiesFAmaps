options ={

{
	default = 1,
	label = "dynamic spawn of mexes",
	help = "Enable the mex spawn algorithm to adjust the map to the player count",
	key = 'automex',
	pref = 'automex',
	values = {
		{ text = "enabled", help = "map adjust automatically for the playercount", key = 1, },
		{ text = "disabled canis 4v4 mexes", help = "Map will not adjust for players and will spawn the mexes of the four main base players and their expansions. The map will look similar to canis 4v4.", key = 2, },
		{ text = "disabled canis 7v7 mexes", help = "Map will not adjust for players and will spawn the all mexes", key = 3, },
        { text = "enabled - crazyrush", help = "Map will adjust for players and will spawn mexes and hydros for each player. The mexes show the same behavior as crazyrush mex and multiply after an extractor has been build on them.", key = 6, }, 
        { text = "enabled - 1 mex crazyrush", help = "Map will adjust for players and will spawn ONE mex per player and hydros for each player. The mexes show the same behavior as crazyrush mex and multiply after an extractor has been build on them.", key = 7, }, 
	},
},


{
	default = 1,
	label = "additional hydros",
	help = "additional hydros on side hills",
	key = 'hydroplus',
	pref = 'hydroplus',
	values = {
		{ text = "enabled", help = "Spawn an additional hydro on the side hills", key = 1, },
		{ text = "disabled", help = "Dont spawn an additional hydro on the side hill", key = 2, },
	},
},

{
	default = 2,
	label = "reclaim - starting ress.",
	help = "add groups of wrecks close to the starting locations of the players.",
	key = 'optional_start',
	pref = 'optional_start',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim close to the starting locations.", key = 1, },
		{ text = "some reclaim", help = "Add some t1 units close to the starting area.", key = 2, },
		{ text = "more reclaim", help = "Add additional t2 units to the starting area.", key = 3, },
		{ text = "a lot of reclaim", help = "Add an additional group of wrecks to the middle area and some t3 units to the sides of the starting area.", key = 4, },
	},
},

{
	default = 1,
	label = "reclaim - middle",
	help = "add groups of wrecks to the middle of the map",
	key = 'optional_reclaim_middle',
	pref = 'optional_reclaim_middle',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim in the middle of the map.", key = 1, },
		{ text = "some reclaim", help = "Add a group of 4 frigates to the river.", key = 2, },
		{ text = "more reclaim", help = "Add a group of 2 destroyers and 2 frigates to the river.", key = 3, },
		{ text = "a lot of reclaim", help = "Add a battleship and some frigates to the river.", key = 4, },
		{ text = "Tempest wreck", help = "Add a tempest to the middle.", key = 5, },
	},
},

{
	default = 1,
	label = "reclaim - side",
	help = "add wrecks to the side of the map",
	key = 'optional_reclaim_side',
	pref = 'optional_reclaim_side',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim on the sides.", key = 1, },
		{ text = "stratbomberwreck", help = "Add a wreck (2k mass) to the side expansion.", key = 2, },
	},
},

{
	default = 1,
	label = "civilians",
	help = "Civilians with different levels of defences in the middle next to the river.",
	key = 'optional_civilian_base',
	pref = 'optional_civilian_base',
	values = {
		{ text = "no civilians", help = "Do not add civilians.", key = 1, },
		{ text = "base - no walls", help = "Add a civilian base without walls and no defences.", key = 2, },
		{ text = "base - no defences", help = "Add a civilian base with walls and no defences.", key = 3, },
		{ text = "base - t1 defences", help = "Add a civilian base with walls and t1 defences.", key = 4, },
		{ text = "base - t2 defences", help = "Add a civilian base with walls and t2 defences.", key = 5, },
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
	default = 1,
	label = "mirror spots",
	help = "Only spawn ressources when mirror spots are taken",
	key = 'mirrormex',
	pref = 'mirrormex',
	values = {
		{ text = "disabled", help = "Always spawn mex/hydro when spot is taken (for both players)", key = 1, },
		{ text = "enabled", help = "only spawn mex/hydro when opposing spot is also taken", key = 2, },

	},
},

};
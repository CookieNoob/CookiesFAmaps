options ={

{
	default = 1,
	label = "dynamic spawn of mexes",
	help = "Enable the mex spawn algorithm to adjust the map to the player count",
	key = 'automex',
	pref = 'automex',
	values = {
		{ text = "enabled", help = "map adjust automatically for the playercount", key = 1, },
		{ text = "disabled - 4v4 mex", help = "Map will not adjust for players and will spawn the mexes of the four usual players and their expansions. The map will look similar to flooded tabula 4v4. Use the spots 1-8", key = 2, },
		{ text = "disabled - all mex", help = "Map will not adjust for players and will spawn the all mexes", key = 3, },
		{ text = "enabled - crazyrush 1 mex", help = "Map will activate the crazyrush script and spawn 1 starting mex for all players.", key = 6, },
		{ text = "enabled - crazyrush", help = "Map will activate the crazyrush script.", key = 7, },
	},
},

{
	default = 1,
	label = "dynamic spawn - mirror spots",
	help = "Only spawn ressources when mirror spots are taken",
	key = 'mirrormex',
	pref = 'mirrormex',
	values = {
		{ text = "disabled", help = "Spawn mex for players that dont have a mirror. The empty mirror spot will also spawn its mex.", key = 1, },
		{ text = "enabled", help = "Only spawn mex/hydro when opposing spot is also taken. This option is not recommended, however it can make uneven matches fairer.", key = 2, },

	},
},

{
	default = 1,
	label = "additional hydros",
	help = "additional hydros on side hills",
	key = 'hydroplus',
	pref = 'hydroplus',
	values = {
		{ text = "disabled", help = "Dont spawn an additional hydro on the side hill", key = 1, },
		{ text = "enabled", help = "Spawn an additional hydro on the side hills", key = 2, },
	},
},

{
	default = 1,
	label = "additional middlemex",
	help = "additional middlemex",
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
	label = "additional sidemex",
	help = "additional sidemex",
	key = 'sidemex',
	pref = 'sidemex',
	values = {
		{ text = "enabled - more mex", help = "Spawn 6 additional mexes on the side.", key = 1, },
		{ text = "enabled", help = "Spawn 4 additional mexes on the side.", key = 2, },
        { text = "enabled - less mex", help = "Spawn 2 additional mexes on the side.", key = 3, },
        { text = "disabled", help = "Spawn no additional mexes on the side.", key = 4, },
    },
},

{
	default = 1,
	label = "additional reclaim",
	help = "add groups of wrecks to the map",
	key = 'optional_reclaim',
	pref = 'optional_reclaim',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim in the middle of the map", key = 1, },
		{ text = "some reclaim", help = "Add some frigates to the beaches of the map.", key = 2, },
		{ text = "more reclaim", help = "Add some destroyers to the map.", key = 3, },
		{ text = "destro+frigates", help = "Add some frigates and destroyers to the map.", key = 4, },
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
	label = "civilians",
	help = "Civilians with different levels of defences on the side island.",
	key = 'optional_civilian_base',
	pref = 'optional_civilian_base',
	values = {
		{ text = "no civilians", help = "Do not add civilians.", key = 1, },
		{ text = "base - t1 defences", help = "Add a civilian base with t1 defences.", key = 2, },
		{ text = "base - t2 defences", help = "Add a civilian base with t2 defences.", key = 3, },
		{ text = "base - t3 defences", help = "Add a civilian base with t3 defences.", key = 4, },
	},
},

};
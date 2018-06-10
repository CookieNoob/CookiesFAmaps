options ={

{
	default = 1,
	label = "dynamic spawn of mexes",
	help = "Enable the mex spawn algorithm to adjust the map to the player count",
	key = 'automex',
	pref = 'automex',
	values = {
		{ text = "enabled", help = "map adjust automatically for the playercount", key = 1, },
		{ text = "disabled - 3v3 mex", help = "Map will not adjust for players and will spawn the mexes of the four usual players and their expansions. Use the spots 1-6", key = 2, },
		{ text = "disabled - all mex", help = "Map will not adjust for players and will spawn the all mexes", key = 3, },
        { text = "enabled - crazyrush 1 mex", help = "Map will activate the crazyrush script and spawn 1 starting mex for all players.", key = 6, },
		{ text = "enabled - crazyrush", help = "Map will activate the crazyrush script.", key = 7, },
	},
},



{
	default = 3,
	label = "number middlemex",
	help = "Determines the number of mass spots in the middle of the map.",
	key = 'middlemex',
	pref = 'middlemex',
	values = {
		{ text = "enabled - more mex", help = "Spawn 6 additional mexes in the middle.", key = 1, },
		{ text = "enabled", help = "Spawn 2 additional mexes in the middle.", key = 2, },
        { text = "disabled", help = "Spawn no additional mexes in the middle.", key = 3, }
    },
},

{
	default = 3,
	label = "number underwater mex",
	help = "Determines the amount of mex underwater between the islands on the sides.",
	key = 'sidemex2',
	pref = 'sidemex2',
	values = {
		{ text = "enabled - more mex", help = "Spawn 4 additional mexes on each side underwater between the islands.", key = 1, },
		{ text = "enabled", help = "Spawn 2 additional mexes on each side underwater between the islands.", key = 2, },
        { text = "disabled", help = "Spawn no additional mexes on the side.", key = 3, },
    },
},

{
	default = 3,
	label = "number island mex",
	help = "Adjust the amount of mex on the small side islands",
	key = 'sidemex1',
	pref = 'sidemex1',
	values = {
		{ text = "enabled - more mex", help = "Spawns 5 mexes on each side island.", key = 1, },
		{ text = "enabled", help = "Spawn 3 mexes on each side island.", key = 2, },
        { text = "disabled", help = "Spawn only 1 mex on each side island.", key = 3, },
    },
},

{
	default = 1,
	label = "reclaim",
	help = "add groups of wrecks to the map",
	key = 'optional_reclaim',
	pref = 'optional_reclaim',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim in the middle of the map", key = 1, },
		{ text = "some reclaim", help = "Add some frigates to the beaches of the map.", key = 2, },
		{ text = "more reclaim", help = "Add some destroyers to the map.", key = 3, },
		{ text = "side island reclaim", help = "Add some navy wrecks to the side islands.", key = 4, },
		{ text = "destro+frigates", help = "Add some frigates and destroyers to the map.", key = 5, },
		{ text = "destro+frigates+island", help = "Add some frigates and destroyers to the map and also some reclaim to the side islands.", key = 6, },
		{ text = "ships+air+island", help = "Add some frigates and destroyers to the map and also some reclaim to the side islands. Adds additionally some air units to the bigger islands.", key = 7, },
	},
},

{
	default = 1,
	label = "reclaim - middle",
	help = "add wrecks to the middle of the map",
	key = 'optional_reclaim_middle',
	pref = 'optional_reclaim_middle',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim on the middle islands.", key = 1, },
		{ text = "small fleet", help = "Add a small naval force to the middle of the map.", key = 2, },
		{ text = "medium fleet", help = "Add a naval group to the middle of the map.", key = 3, },
		{ text = "large fleet", help = "Add a large naval group to the middle of the map.", key = 4, },
		{ text = "very large fleet", help = "Add a naval group including an atlantis to the middle of the map.", key = 5, },
	},
},

{
    default = 1,
    label = "forward crazyrush mex",
    help = "makes a mex on the middle islands behave like crazyrush mexes.",
    key = 'dupicatesinglemex',
    pref = 'dupicatesinglemex',
    values = {
        { text = "disabled", help = "All mexes behave normally.", key = 1, },
        { text = "enabled", help = "Some expansion mex split into multiple mexes.", key = 2, },
    },
},




{
	default = 1,
	label = "Civilian Base",
	help = "Spawn a civilian base on the small side islands.",
	key = 'optional_civilian_base',
	pref = 'optional_civilian_base',
	values = {  
        { text = "disabled", help = "Spawn no civilians.", key = 1, },
		{ text = "enabled - no defences", help = "Spawn a civilian base without point defences.", key = 2, },
		{ text = "enabled - t1 defences", help = "Spawn a civilian base with some t1 point defences.", key = 3, },
		{ text = "enabled - t2 defences", help = "Spawn a civilian base with some t2 point defences.", key = 4, },
		{ text = "enabled - t3 defences", help = "Spawn a civilian base with massive defencive structures.", key = 5, },
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
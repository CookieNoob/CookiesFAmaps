options ={

{
	default = 1,
	label = "dynamic spawn of mexes",
	help = "Enable the mex spawn algorithm to adjust the map to the player count",
	key = 'automex',
	pref = 'automex',
	values = {
		{ text = "enabled", help = "map adjust automatically for the playercount", key = 1, },
		{ text = "disabled - 4v4 mex", help = "Map will not adjust for players and will spawn the mexes of the four usual players and their expansions. The map will look similar to syris major 4v4. Use the spots 1-8, other spots wont spawn ressources!", key = 2, },
		{ text = "disabled - 3v3 mex", help = "Map will not adjust for players. The map will look similar to syris major 3v3. Use the spots 1-4 and 9,10, other spots wont spawn ressources!", key = 3, },
		{ text = "disabled - all mex", help = "Map will not adjust for players and will spawn the all mexes", key = 4, },
		{ text = "enabled - crazyrush 1 mex", help = "Map will activate the crazyrush script and spawn 1 starting mex for all players.", key = 6, },
		{ text = "enabled - crazyrush", help = "Map will activate the crazyrush script.", key = 7, },        
	},
},

{
	default = 5,
	label = "civilian Base",
	help = "Spawn a civilian base in the middle.",
	key = 'optional_civilian_base',
	pref = 'optional_civilian_base',
	values = {
        { text = "disabled", help = "Spawn no civilians.", key = 1, },
		{ text = "tiny base - t1 defences", help = "A civilian base in the middle with some t1 point defences.", key = 2, },
		{ text = "tiny base - t2 defences", help = "A civilian base in the middle with some t2 point defences.", key = 3, },        
		{ text = "tiny base - no defences", help = "A civilian base in the middle without defences.", key = 4, },     
		{ text = "small base - t1 defences", help = "A civilian base with low value buildings in the middle with some t1 point defences.", key = 5, },
		{ text = "small base - t2 defences", help = "A civilian base with low value buildings in the middle with some t2 point defences.", key = 6, },        
		{ text = "small base - no defences", help = "A civilian base with low value buildings in the middle without defences.", key = 7, },     
		{ text = "large base - t1 defences", help = "A civilian base with high value buildings in the middle with some t1 point defences.", key = 8, },
		{ text = "large base - t2 defences", help = "A civilian base with high value buildings in the middle with some t2 point defences.", key = 9, },        
		{ text = "large base - no defences", help = "A civilian base with high value buildings in the middle without defences.", key = 10, },     
    },
},

{
	default = 1,
	label = "number middlemex",
	help = "Adjusts the number of mex that are in the middle.",
	key = 'middlemex',
	pref = 'middlemex',
	values = {
		{ text = "enabled", help = "Spawn 4 additional mexes in the middle.", key = 1, },
		{ text = "enabled - less mex", help = "Spawn 2 additional mexes in the middle.", key = 2, },
        { text = "disabled", help = "Spawn no additional mexes in the middle.", key = 3, }
    },
},

{
	default = 1,
	label = "number sidemex",
	help = "Adjusts the number of mex that are at the side.",
	key = 'sidemex',
	pref = 'sidemex',
	values = {
		{ text = "enabled - more mex", help = "Spawn 2 additional mexes on the side of opposite side of the mountain from player 15/16 perspective.", key = 1, },
		{ text = "enabled", help = "Spawn 1 additional mexes on the side of opposite side of the mountain from player 15/16 perspective", key = 2, },
        { text = "disabled", help = "Spawn no additional mexes on the side of opposite side of the mountain from player 15/16 perspective", key = 3, },
    },
},

{
	default = 1,
	label = "number plateau mex",
	help = "Adjusts the number of mex that are at the side passages between the teams.",
	key = 'platmex',
	pref = 'platmex',
	values = {
		{ text = "enabled - more mex", help = "Spawn 3 additional mexes on each side between the players (at the end of the plateaus). This is the standard setting on Syrtis Major.", key = 1, },
		{ text = "enabled", help = "Spawn 1 additional mexes on each side between the players (at the end of the plateaus).", key = 2, },
        { text = "disabled", help = "Spawn no additional mexes on the side.", key = 3, },
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
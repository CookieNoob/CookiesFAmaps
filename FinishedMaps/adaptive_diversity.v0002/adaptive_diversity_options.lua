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
	label = "additional hydros",
	help = "Spawn a hydro for every player.",
	key = 'hydroplus',
	pref = 'hydroplus',
	values = {
		{ text = "disabled", help = "Only spawns the four hydros in the middle.", key = 1, },
		{ text = "enabled", help = "Spawn a hydro for every player.", key = 2, },
	},
},

{
	default = 2,
	label = "number middlemex",
	help = "determines the number of mexes in the center of the map.",
	key = 'middlemex',
	pref = 'middlemex',
	values = {
		{ text = "enabled", help = "Spawn 4 additional mexes in the middle.", key = 1, },
		{ text = "enabled - less mex", help = "Spawn 2 additional mexes in the middle.", key = 2, },
        { text = "disabled", help = "Spawn no additional mexes in the middle.", key = 3, }
    },
},

{
	default = 5,
	label = "number underwatermex",
	help = "determines the number of mexes underwater.",
	key = 'underwatermex',
	pref = 'underwatermex',
	values = {
		{ text = "enabled - much more mex", help = "Spawn 4 additional mexes underwater in each lake.", key = 1, },
		{ text = "enabled - more mex", help = "Spawn 3 additional mexes underwater in each lake.", key = 2, },
		{ text = "enabled", help = "Spawn 2 additional mexes underwater in each lake.", key = 3, },
		{ text = "enabled - less mex", help = "Spawn 1 additional mex underwater in each lake.", key = 4, },
        { text = "disabled", help = "Spawn no additional mexes in the middle.", key = 5, }
    },
},

{
	default = 2,
	label = "reclaim",
	help = "add groups of wrecks to the middle of the map",
	key = 'optional_reclaim',
	pref = 'optional_reclaim',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim in the middle of the map", key = 1, },
		{ text = "some reclaim", help = "Add some t1 and t2 units to the center.", key = 2, },
		{ text = "a bit more reclaim", help = "Add some t1 and some more t2 units to the center.", key = 3, },
		{ text = "more reclaim", help = "Add some t1 and some loyalists to the center.", key = 4, },
		{ text = "much more reclaim", help = "Add some t1 and some bricks to the center.", key = 5, },
		{ text = "fatboy", help = "Add some t1 and a fatboy to the center.", key = 6, },
		{ text = "fatboy+t3 reclaim", help = "Add some t1, bricks and a fatboy to the center.", key = 7, },
	},
},
{
	default = 1,
	label = "civ. base",
	help = "adds two civilian bases with different levels of defences on the shores.",
	key = 'optional_civilian_base',
	pref = 'optional_civilian_base',
	values = {
		{ text = "disabled", help = "Do not add a civilian base to the side of the map", key = 1, },
		{ text = "no defences", help = "Adds a civilian base to the shore.", key = 2, },
		{ text = "t1 defences", help = "Adds a civilian base with t1 defencive structures to the shore.", key = 3, },
        { text = "t2 defences", help = "Adds a civilian base with t2 defencive structures.", key = 4},
        { text = "t3 defences", help = "Adds a civilian base with t3 defencive structures.", key = 5},
        { text = "t3 defences+arty", help = "Adds a civilian base with t3 defencive structures and t2 artillery.", key = 6},
	},
},

{
    default = 1,
    label = "civ. base shield",
    help = "determines the amount of shielding for the base on the shore. This option only takes effect when there is a civilian base on the shore.",
    key = 'optional_civilian_shields',
    pref = 'optional_civilian_shields',
    values = {
        { text = "disabled", help = "The base on the shore is unshielded.", key = 1},
        { text = "some shields", help = "Adds a few t2 shields to the base on the shore.", key = 2},              
        { text = "more shields", help = "Adds a few t2 shields and t3 shields to the base on the shore.", key = 3},
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
    label = "forward crazyrush mex",
    help = "makes a mex next to the plateau in the middle behave like crazyrush mexes.",
    key = 'dupicatesinglemex',
    pref = 'dupicatesinglemex',
    values = {
        { text = "disabled", help = "All mexes behave normally.", key = 1, },
        { text = "enabled", help = "Some expansion mex split into multiple mexes.", key = 2, },
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
	default = 3,
	label = "additional sidemex",
	help = "additional sidemex",
	key = 'sidemex',
	pref = 'sidemex',
	values = {
		{ text = "enabled - more mex", help = "Spawn 4 additional mexes on each side near the coast.", key = 1, },
		{ text = "enabled", help = "Spawn 2 additional mexes on each side near the coast.", key = 2, },
        { text = "disabled", help = "Spawn no additional mexes on the side.", key = 3, },
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
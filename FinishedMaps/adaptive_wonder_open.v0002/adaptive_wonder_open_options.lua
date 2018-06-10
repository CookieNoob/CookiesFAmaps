options ={

{
	default = 1,
	label = "Auto adjust to player count",
	help = "Enable the mex spawn algorithm to adjust the map to the player count.",
	key = 'automex',
	pref = 'automex',
	values = {
		{ text = "enabled", help = "Map adjust automatically for the playercount", key = 1, },
		{ text = "disabled - WonderOpen4v4", help = "USE SPOTS: 1-8! Map will not adjust for players and will spawn the mexes of the four main base players and their expansions. The map will look similar to Wonder 4v4.", key = 2, },
		{ text = "disabled - WonderOpenNA", help = "USE SPOTS: 3-10! Map will not adjust for players and will spawn the mexes of the four main base players and their expansions. The air position will stay empty. The map will look similar to Wonder NA 4v4.", key = 3, },
		{ text = "disabled - WonderOpen5v5", help = "USE SPOTS: 1-10! Map will not adjust for players and will spawn the mexes of the five main base players and their expansions. The map will look similar to New Zeta Wonder 5v5.", key = 4, },
		{ text = "disabled - all mexes", help = "Map will not adjust for players and will spawn all mexes and hydros.", key = 5, },  
        { text = "enabled - crazyrush", help = "Map will adjust for players and will spawn mexes and hydros for each player. The mexes show the same behavior as crazyrush mex and multiply after an extractor has been build on them.", key = 6, }, 
        { text = "enabled - 1 mex crazyrush", help = "Map will adjust for players and will spawn ONE mex per player and hydros for each player. The mexes show the same behavior as crazyrush mex and multiply after an extractor has been build on them.", key = 7, }, 
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
		{ text = "enabled - even more mass", help = "6 mex in the middle.", key = 3, },        
		{ text = "disabled", help = "No mex in the middle.", key = 4, },
	},
},

{
	default = 1,
	label = "number side mex top",
	help = "Adjust the number of mexes in the middle of the side spots on the bottom side",
	key = 'mexsidetop',
	pref = 'mexsidetop',
	values = {
		{ text = "enabled", help = "3 mex on the top side.", key = 1, },    
		{ text = "enabled - less mass", help = "2 mex on the top side.", key = 2, },
		{ text = "enabled - more mass", help = "5 mex on the top side.", key = 3, },
		{ text = "enabled - much more mass", help = "9 on the top side.", key = 4, },
		{ text = "disabled", help = "No mex on the top side.", key = 5, },
	},
},

{
	default = 1,
	label = "number side mex bottom",
	help = "Adjust the number of mexes in the middle of the side spots on the bottom side",
	key = 'mexsidebot',
	pref = 'mexsidebot',
	values = {
		{ text = "enabled", help = "3 mex on the bottom side.", key = 1, },    
		{ text = "enabled - less mass", help = "2 mex on the bottom side.", key = 2, },
		{ text = "enabled - more mass", help = "5 mex on the bottom side.", key = 3, },
		{ text = "enabled - much more mass", help = "9 on the bottom side.", key = 4, },
		{ text = "disabled", help = "No mex on the bottom side.", key = 5, },
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
		{ text = "some reclaim", help = "Adds a t2 radar and 2 pillar to the middle(~500 mass).", key = 2, }, 
		{ text = "more reclaim", help = "Adds a t3 radar and 2 titans to the middle (~2.3k mass).", key = 3, },
	},
},

{
	default = 1,
	label = "reclaim - side",
	help = "add groups of wrecks to the sides of the map",
	key = 'optional_reclaim_side',
	pref = 'optional_reclaim_side',
	values = {
		{ text = "no reclaim", help = "Do not add additional reclaim in the middle of the map", key = 1, },
		{ text = "t2 radar", help = "Adds t2 radars to the side crates (400 mass each).", key = 2, },    
		{ text = "omni", help = "Adds t3 radars to the side crates (2.3k mass each).", key = 3, },
        { text = "small t1 army", help = "Adds several t1 units to the sides (900 mass).", key = 4},
        { text = "small t2 army", help = "Adds several t2 units to the sides (1800 mass).", key = 5},
	},
},

{
	default = 1,
	label = "civilian base",
	help = "adds a civilian base with different levels of defences to the middle of the map",
	key = 'optional_civ_base',
	pref = 'optional_civ_base',
	values = {
		{ text = "disabled", help = "Do not add additional reclaim in the middle of the map", key = 1, },
		{ text = "no defences", help = "Adds a civilian base to the middle of the map.", key = 2, },    
		{ text = "no defences+shields", help = "Adds a shielded civilian base to the middle of the map.", key = 3, },            
		{ text = "t1 defences", help = "Adds a civilian base with t1 defencive structures to the middle of the map.", key = 4, },
		{ text = "t1 defences+shields", help = "Adds a shielded civilian base with t1 defencive structures to the middle of the map.", key = 5, },
        { text = "t2 defences", help = "Adds a civilian base with t2 defencive structures to the middle of the map.", key = 6},
        { text = "t2 defences+shields", help = "Adds a shielded civilian base with t2 defencive structures to the middle of the map.", key = 7},
        { text = "t3 defences", help = "Adds a civilian base with t3 defencive structures to the middle of the map.", key = 8},
        { text = "t3 defences+shields", help = "Adds a shielded civilian base with t3 defencive structures to the middle of the map.", key = 9},
	},
},

{
	default = 1,
	label = "regrowing trees",
	help = "Regrow reclaimed trees slowly when there are still other trees around. If there are more trees close, the faster they regrow. USE THIS OPTION ONLY WITH VERY GOOD CPUs!",
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
	help = "Uneven matchups can be made easier for the outnumbered team by not spawning ressources at the spot without mirror.",
	key = 'mirrormex',
	pref = 'mirrormex',
	values = {
		{ text = "disabled", help = "If a mirror spot is empty, the ressources for both players will spawn.", key = 1, },
		{ text = "enabled", help = "If a mirror spot is empty, the player without mirror wont spawn the starting mex. This is useful to make uneven matchups fairer (i.e. one core base less compared to one expansion less).", key = 2, },
	},
},

};
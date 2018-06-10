-- table of which ressources belong to which player, it is sorted in such a way that the first line 
-- corresponds to player one, the second to player 2 and so on...







-- line number is 10 + armyumber for the mexes in the table
spwnMexArmy = {     {  1,  2,  3,  5,121,125,131},
                    {  7,  8,  9, 11,120,124,130},
                    { 13, 14, 15, 17,106,133,156},
                    { 19, 20, 21, 23,107,132,157},
                    { 24, 25, 26, 27, 84,149},
                    { 28, 29, 30, 31, 85,148},
                    {123,144,105, 37, 38, 39,126},
                    {122,145, 33, 34, 35,104,127},
                    { 98, 40, 41, 43,135,137},
                    { 99, 44, 45, 47,134,136},
                    { 49, 48, 52, 53,139,115},
                    { 55, 54, 58, 59,138,114},
                    {140, 90, 92, 69, 70, 71},
                    {141, 91, 93, 63, 64, 65},
                    { 73, 75, 77,147,110,151, 72},
                    { 83, 81, 79,146,111,150, 78}    }



-- line number is 30 + armyumber for the hydros in the table
spwnHydroArmy ={    {0},
                    {1},
                    {2},
                    {3},
                    {},
                    {},
                    {12},
                    {13},
                    {11},
                    {10},
                    {14},
                    {15},
                    {6},
                    {7},
                    {8},
                    {9}}

-- table for the "additional hydro" option
spwnAdditionalHydro = {}

middlemass = {{},{}}

sidemass = {{},{}}

underwatermass = {{96,97,152,153},{94,95,154,155}}

islandmass ={{86,87,88,89},{80,74}}

plateaumex = {{100,101,60,66,102,103},{112,113,62,68}}

-- table for the "dynamic spawn - crazyrush 1 mex" option
crazyrushOneMex = {3,9,17,23,27,31,33,37,40,44,53,59,63,69,75,81}

-- add mexes in this table also to the corresponding player (allows to increase the mex count in the starting base)
extramass = {130,131,133,132,27,31,144,145,146,147,138,139,136,137,140,141}

-- table for the "forward crazyrush option"
DuplicateListMex = {128,129}
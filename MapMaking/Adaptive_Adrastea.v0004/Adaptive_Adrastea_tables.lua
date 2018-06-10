-- table of which ressources belong to which player, it is sorted in such a way that the first line 
-- corresponds to player one, the second to player 2 and so on...







-- line number is 10 + armyumber for the mexes in the table
spwnMexArmy = {     {  1,  3,  7,  9, 13, 19, 21},
                    {  2,  4,  8, 10, 14, 20, 22},
                    { 23, 25, 29, 31, 37, 41},
                    { 24, 26, 30, 32, 38, 42},
                    { 43, 45, 49, 51, 53, 55},
                    { 44, 46, 50, 52, 54, 56},
                    { 71, 73, 77, 81, 83, 85},
                    { 72, 74, 78, 82, 84, 86},
                    { 63, 57, 59, 61, 67, 69},
                    { 64, 58, 60, 62, 68, 70},
                    {119,121,123,125,127,129,131,169},
                    {120,122,124,126,128,130,132,170},
                    {101,105,109,111,113,115,117},
                    {102,106,110,112,114,116,118},
                    { 87, 89, 93, 95, 97, 99},
                    { 88, 90, 94, 96, 98, 100}    }



-- line number is 30 + armyumber for the hydros in the table
spwnHydroArmy ={    {1},
                    {2},
                    {3},
                    {4},
                    {5},
                    {6},
                    {7},
                    {8},
                    {9},
                    {10},
                    {11},
                    {12},
                    {13},
                    {14},
                    {15},
                    {16}}

-- table for the "additional hydro" option
spwnAdditionalHydro = {}

middlemass = {{157,158},{159,160},{161,162}}

sidemass = {{163,164},{167,168},{165,166}}

underwatermass = {{15,16,141,142,149,150},{137,138,139,140,145,146},{135,136,143,144,147,148}}

islandmass ={{151,152},{153,154}}

backmass = {{},{}}

-- table for the "dynamic spawn - crazyrush 1 mex" option
crazyrushOneMex = {1,2,23,24,45,46,63,64,71,72,89,90,101,102,123,124}

-- add mexes in this table also to the corresponding player (allows to increase the mex count in the starting base)
extramass = {21,22,32,31,43,44,57,58,85,86,97,98,117,118,131,132}

-- table for the "forward crazyrush option"
DuplicateListMex = {155,156}
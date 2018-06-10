-- table of which ressources belong to which player, it is sorted in such a way that the first line 
-- corresponds to player one, the second to player 2 and so on...







-- line number is 10 + armyumber for the mexes in the table
spwnMexArmy = {     {  1,  3,  5,  7,  9, 11, 13},
                    {  2,  4,  6,  8, 10, 12, 14},
                    { 15, 17, 19, 21, 23, 25, 27},
                    { 16, 18, 20, 22, 24, 26, 28},
                    { 29, 31, 33, 35, 37, 39, 41},
                    { 30, 32, 34, 36, 38, 40, 42},
                    { 43, 45, 47, 49, 51, 53, 55},
                    { 44, 46, 48, 50, 52, 54, 56},
                    { 57, 59, 61, 63, 65, 67, 69},
                    { 58, 60, 62, 64, 66, 68, 70},
                    { 71, 73, 75, 77, 79, 81, 83},
                    { 72, 74, 76, 78, 80, 82, 84},
                    { 85, 87, 89, 91, 93, 95, 97},
                    { 86, 88, 90, 92, 94, 96, 98},
                    { 99,101,103,105,107,109,111},
                    {100,102,104,106,108,110,112},    }



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

middlemass = {{141,142},{137,138,139,140},{135,136}}

sidemass = {{147,148},{149,150}}

underwatermass = {}

islandmass ={{129,130},{131,132}}

backmass = {}

-- table for the "dynamic spawn - crazyrush 1 mex" option
crazyrushOneMex = {1,2,15,16,29,30,43,44,57,58,71,72,85,86,99,100}

-- add mexes in this table also to the corresponding player (allows to increase the mex count in the starting base)
extramass = {13,14,25,26,41,42,55,56,69,70,83,84,97,98,111,112}

-- table for the "forward crazyrush option"
DuplicateListMex = {143,144}
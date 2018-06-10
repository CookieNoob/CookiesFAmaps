-- enter maximum possible player count (army slots) on the map
maxPlayerOnMap = 16






-- table of which resources belong to which player, it is sorted in such a way that the first line corresponds to ARMY_1, the second to ARMY_2 and so on...
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

-- RESOURCE SCALING OPTIONS
-- exampleMexes = {{1,2},{3,4},{5,6}},        -- exampleMexes = {{1,2}}
-- exampleMexes = {{a},{b},{c}},              -- exampleMexes = {{a}}
    -- option key=1 : removes a+b+c               -- option key=1 : removes a
    -- option key=2 : spawn a, removes b+c        -- option key=2 : spawns a
    -- option key=3 : spawn a+b, removes c
    -- option key=4 : spawn a+b+c

-- add extra hydros to the map
extraHydros = {{}}

-- add extra mexes to the map
extraMexes = {{}}

-- configure the amount of mexes at a certain map position
middleMexes = {{161,162},{159,160},{157,158}}
sideMexes = {{165,166},{167,168},{163,164}}
underwaterMexes = {{135,136,143,144,147,148},{137,138,139,140,145,146},{15,16,141,142,149,150}}
islandMexes ={{153,154},{151,152}}
expansionMexes = {{},{},{}}

-- BASE RESOURCE SCALING OPTIONS
-- add core mexes 
-- dont forget to add these mexes also to spwnMexArmy
coreMexes = {{21,22,32,31,43,44,57,58,85,86,97,98,117,118,131,132}}

-- add mexes to starting base (further away from coreMexes) 
-- dont forget to add these mexes also to spwnMexArmy
extraBaseMexes = {{}}


-- INTENTIONAL UNEVEN RESOURCE SCALING OPTIONS
topSideMexes = {{},{},{}}
bottomSideMexes = {{},{},{}}


-- CRAZYRUSH OPTIONS
-- determine forward crazy rush mexes
forwardCrazyrushMexes = {155,156}

-- table for the "crazyrush 1 core mex" option.
-- dont forget to add these mexes also to spwnMexArmy
crazyrushOneMexes = {1,2,23,24,45,46,63,64,71,72,89,90,101,102,123,124}
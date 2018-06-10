-- enter maximum possible player count (army slots) on the map
maxPlayerOnMap = 16






-- table of which resources belong to which player, it is sorted in such a way that the first line corresponds to ARMY_1, the second to ARMY_2 and so on...
-- line number is 10 + armyumber for the mexes in the table
spwnMexArmy = {   {2,5,4,31,3},
                  {72,73,74,75,85},
                  {30,27,26,37,28},   
                  {50,51,45,47,49}, 
                  {7,9,1,33,6},
                  {67,76,81,69,66},
                  {19,23,20,24,16},
                  {56,60,58,57,53},
                  {12,13,14,17,18},
                  {64,65,63,62,59},
                  {101,103,44,97,34},
                  {98,104,102,100,82},
                  {113,109,107,105,121},
                  {110,122,108,114,106},
                  {95,117,119,123,42},
                  {118,124,84,94,120}    };



-- line number is 30 + armyumber for the hydros in the table
spwnHydroArmy ={    {0},
                    {8},
                    {4},
                    {5},
                    {1},
                    {9},
                    {3},
                    {6},
                    {2},
                    {7},
                    {15},
                    {16},
                    {13},
                    {14},
                    {11},
                    {12}};


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
middleMexes = {{125,126},{91,92},{90,93}};
sideMexes = {{89,40},{39,87}};
underwaterMexes = {{},{},{}}
islandMexes ={{},{},{}}
expansionMexes = {{},{},{}}


-- BASE RESOURCE SCALING OPTIONS
-- add core mexes 
-- dont forget to add these mexes also to spwnMexArmy
coreMexes = {{}}

-- add mexes to starting base (further away from coreMexes) 
-- dont forget to add these mexes also to spwnMexArmy
extraBaseMexes = {{}}


-- INTENTIONAL UNEVEN RESOURCE SCALING OPTIONS
topSideMexes = {{},{},{}}
bottomSideMexes = {{},{},{}}


-- CRAZYRUSH OPTIONS
-- determine forward crazy rush mexes
forwardCrazyrushMexes = {46,38}

-- table for the "crazyrush 1 core mex" option.
-- dont forget to add these mexes also to spwnMexArmy
crazyrushOneMexes = {3,72,10,68,12,64,21,54,52,25,98,97,107,108,42,84}

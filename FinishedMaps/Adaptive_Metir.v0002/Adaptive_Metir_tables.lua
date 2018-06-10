-- enter maximum possible player count (army slots) on the map
maxPlayerOnMap = 16







-- line number is 10 + armyumber for the mexes in the table
spwnMexArmy = {     {  1,  3,  5,  9, 13, 15, 17, 57,211},
                    {  2,  4,  6, 10, 14, 16, 18, 58,212},
                    { 21, 23, 25, 27, 29, 33, 35, 59,205},
                    { 22, 24, 26, 28, 30, 34, 36, 60,206},
                    { 37, 39, 41, 45, 47, 51, 53, 55,199},
                    { 38, 40, 42, 46, 48, 52, 54, 56,200},
                    { 61, 65, 67, 69, 73, 77, 79, 81,217,195},
                    { 62, 66, 68, 70, 74, 78, 80, 82,218,196},
                    { 83, 85, 87, 91, 93, 95, 99,103,185,97},
                    { 84, 86, 88, 92, 94, 96,100,104,186,98},
                    {105,107,111,113,115,117,119,121,213},
                    {106,108,112,114,116,118,120,122,214},
                    {127,129,133,135,137,139,141,143,193},
                    {128,130,134,136,138,140,142,144,194},
                    {145,147,149,153,155,157,159,161,227},
                    {146,148,150,154,156,158,160,162,228}   }



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
extraHydros = {}

middleMexes = {{},{}}

sideMexes = {{},{}}

underwaterMexes = {{201,202,203,204,205,206,207,208},{169,170,171,172,173,174},{163,164,165,166,167,168}}

islandMexes ={{},{}}

extraMexes = {{},{}}

-- table for the "dynamic spawn - crazyrush 1 mex" option
crazyrushOneMex = {37,38,5,6,21,22,147,148,87,88,105,106,127,128,67,68}

-- add mexes in this table also to the corresponding player (allows to increase the mex count in the starting base)
coreMexes = {55,56,57,58,59,60,69,70,91,92,135,136,153,154}

-- table for the "forward crazyrush option"
forwardCrazyrushMexes = {193,194}
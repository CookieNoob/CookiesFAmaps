------------------------------------------------------------------------
----- Script by CookieNoob and KeyBlue ---------------------------------
------------------------------------------------------------------------
local ScenarioUtils = import('/lua/sim/ScenarioUtilities.lua')
local ScenarioFramework = import('/lua/ScenarioFramework.lua')
local Tables = import('/maps/adaptive_new_canis.v0002/adaptive_new_canis_tables.lua')

--stuff for the crazyrush script
local currentResSpot = 0
local generatedMass = {}
local checkedExtractor = {}

--stuff for expansion script
local spawnedMassSpots={}
local spawnedMexNumber = 0

--stuff for tree script
local InitialListTrees = {}
local TreeRegrowSpeed = 1
math.randomseed(1)



------------------------------------------------------------------------
----- Initialization part ----------------------------------------------
------------------------------------------------------------------------
function OnPopulate()    
    ScenarioUtils.InitializeArmies();
end

function OnStart()
    --check if a message needs to be displayed
    ForkThread(showmessage)    
    
    --activate crazyrush in case the correct option is checked
    local automex = ScenarioInfo.Options.automex or 1
    if(automex >5) then
        LOG("ULTIMATE activate Crazyrush")
        ForkThread(Crazyrush_checkMassPoint)
    end
    
    --activate regrowing trees
    TreeRegrowSpeed = ScenarioInfo.Options.tree or 1
    if(TreeRegrowSpeed > 1) then
        ForkThread(Tree_StartGrowingTrees)
    end
end










------------------------------------------------------------------------
----- dynamic spawns ---------------------------------------------------
------------------------------------------------------------------------
function ScenarioUtils.CreateResources()
-- Script by CookieNoob and KeyBlue   
   
   
   
-- get scenario info about how the map should look like, if no option is changed, change it to the default
    local automex = ScenarioInfo.Options.automex or 1
    local hydroplus = ScenarioInfo.Options.hydroplus or 1
    local optional_reclaim_middle = ScenarioInfo.Options.optional_reclaim_middle or 1
    local optional_reclaim_side = ScenarioInfo.Options.optional_reclaim_side or 1
    local middlemex = ScenarioInfo.Options.middlemex or 1
    local sidemex = ScenarioInfo.Options.sidemex or 1
    local optional_reclaim = ScenarioInfo.Options.optional_reclaim or 1
    local mirrormex = ScenarioInfo.Options.mirrormex or 1
    local optional_civilian_base = ScenarioInfo.Options.optional_civilian_base or 1
    local optional_start = ScenarioInfo.Options.optional_start or 2
-- get map markers
    local markers = ScenarioUtils.GetMarkers();
    

    
    if ((optional_reclaim > 1) and (optional_reclaim < 5)) then
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Wreckage_' .. optional_reclaim, true)
    end
    if optional_reclaim_middle > 1 then
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Wreckage_Middle_'..optional_reclaim_middle, true)
    end
    if optional_reclaim_side > 1 then
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Wreckage_Side_'..optional_reclaim_side, true)
    end
    if(optional_civilian_base > 1) then
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Civilians_Base', false)
        if(optional_civilian_base > 2) then
            ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Civilians_Defences_Walls', false)
            if(optional_civilian_base == 4) then
                ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Civilians_Defences_2', false)
            elseif(optional_civilian_base == 5) then
                ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Civilians_Defences_3', false)
            end
        end
    end
    for m = 2, optional_start do
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Wreckage_Start_'.. m, true)
    end
    
-- table of which ressources belong to which player, it is sorted in such a way that the first line 
-- corresponds to player one, the second to player 2 and so on... load it from the _tables.lua file

    local spwnMexArmy = Tables.spwnMexArmy;
    local spwnHydroArmy = Tables.spwnHydroArmy;
    local spwnAdditionalHydro = Tables.spwnAdditionalHydro;
    local spwnAdditionalmiddlemass = Tables.middlemass;
    local spwnAdditionalsidemass = Tables.sidemass;
    local crazyrushOneMex = Tables.crazyrushOneMex;
    -- find out if there are spots that do not have a mirror
    -- in that case store the pair in the list with false

    local numberOfNotPresentArmies = 1;

-- check which army isnt there
    local Notpresentarmies = {};
    local ArmyList = ListArmies()
    for j, spawnmex in ScenarioInfo.Options.SpawnMex or {} do
        if spawnmex then
            ArmyList[table.getn(ArmyList) + 1] = 'ARMY_' .. j
        end
    end
    if(automex == 1 or automex == 6 or automex == 7) then
        for m = 1, 8 do
            local army1 = (2*m - 1)
            local army2 = (2*m)
            local army1String = "ARMY_" .. army1
            local army2String = "ARMY_" .. army2
           
            local here = 0;
            for number, army in ArmyList do
                if( army == army1String or army == army2String ) then
                    here = here + 1;
                end
            end
           
            if ( (mirrormex == 1 and here < 1 ) or (mirrormex == 2 and here < 2) ) then
                Notpresentarmies[numberOfNotPresentArmies] = army1;
                numberOfNotPresentArmies = numberOfNotPresentArmies + 1;
                Notpresentarmies[numberOfNotPresentArmies] = army2;
                numberOfNotPresentArmies = numberOfNotPresentArmies + 1;
            end
        end
    elseif(automex == 2) then
        for m = 9, 16 do
            Notpresentarmies[numberOfNotPresentArmies] = m;
            numberOfNotPresentArmies = numberOfNotPresentArmies + 1;
        end    
    elseif(automex == 3) then
        Notpresentarmies = {};        
    end

    
    for name, tblData in pairs(markers) do
    -- spawn resources?

-- only spawn ressources (obviously)                
        if (not tblData.resource) then
            doit = false;
        else
        -- standard resources, spawn it
            doit = true;
           
-- remove the spawn when a player is not present, loop over all not present armies and check if the marker
-- for the current mex/hydro is corresponds to one of those in the list
            for _ ,armynumber in Notpresentarmies do
-- loop over all markers of mexes in the table of the row of the missing army
                doit=FalseIfInList(name, spwnMexArmy[armynumber], MassString, doit);
                doit=FalseIfInList(name, spwnHydroArmy[armynumber], HydroString, doit);
            end
            
            if(hydroplus == 1) then
                doit=FalseIfInList(name, spwnAdditionalHydro, HydroString, doit);
            end
            for l = 1, middlemex - 1   do
                if(l==3) then
                    break;
                end
                if(middlemex == 3 and l != 1 or middlemex != 3) then -- in this case ignore the first group of mex
                    doit=FalseIfInList(name, spwnAdditionalmiddlemass[l], MassString, doit);
                end
            end
            for l = 1, sidemex - 1  do
                doit=FalseIfInList(name, spwnAdditionalsidemass[l], MassString, doit);
            end
        end
        
        if(automex == 7) then
            doit = DoitIfInList(name, crazyrushOneMex, MassString, doit);
        end
        
        
   		if (doit) then
            spawnressource(tblData.position,tblData.type)
   		end
   	end
end
   
function MassString(_mexname)
    if(_mexname > 9) then
        return "Mass " .. _mexname;
    else 
        return "Mass 0" .. _mexname;
    end   
end   
   
function HydroString(_hydroname)
    if(_hydroname > 9) then
        return "Hydrocarbon " .. _hydroname;
    else 
        return "Hydrocarbon 0" .. _hydroname;
    end    
end      

function FalseIfInList(name,list, string_function, _doit)
    for k = 1, table.getn(list) do  
        if(name == (string_function(list[k]))) then
            return false
        end
    end
    return _doit;
end

function DoitIfInList(name, list, string_function, _doit)
    for k = 1, table.getn(list) do  
        if(name == (string_function(list[k]))) then
            return _doit
        end
    end
    return false
end

function spawnressource(Position,restype)
    local albedo,bp,lod,Size
    
    albedo = "/env/common/splats/";
    if(restype== 'Mass') then
        albedo = albedo .. "mass_marker.dds"
        bp = "/env/common/props/massDeposit01_prop.bp";
        lod = 100
        Size = 2
    else
        albedo = albedo .. "hydrocarbon_marker.dds"
        bp = "/env/common/props/hydrocarbonDeposit01_prop.bp";
        lod = 200
        Size = 6
    end
    
    CreateSplat(
   		Position,                   # Position
   		0,                          # Heading (rotation)
   		albedo,                     # Texture name for albedo
   		Size, Size,                 # SizeX/Z
   		lod,                        # LOD
   		0,                          # Duration (0 == does not expire)
   		-1,                         # army (-1 == not owned by any single army)
   		0							# ???
   	);
-- create the resource
    CreateResourceDeposit(restype, Position[1], Position[2], Position[3], Size/2);
-- create the resource graphic on the map
    CreatePropHPR(bp, Position[1], Position[2], Position[3], Random(0,360), 0, 0);
-- create the resource icon on the map
end


------------------------------------------------------------------------
----- Message part -----------------------------------------------------
------------------------------------------------------------------------
function showmessage()
    local message = ''
    local mexsidetop = ScenarioInfo.Options.mexsidetop or 1
    local mexsidebot = ScenarioInfo.Options.mexsidebot or 1    
    local sendmessage = false
       
    if mexsidebot != mexsidetop then
        message = message .. 'There is a difference in the number of mexes between the bottom left corner and the top right corner.'
        
        for k = 1, 4 do
            local counter = 0
            for _, army in ListArmies() do
--adjust these pairs! They are correct on wonder but maybe not on this map! 
                if ((army == 'ARMY_'..(2+k) ) or (army == 'ARMY_'..(11-k))) then
                    counter = counter + 1
                end
            end
            if(counter == 1) then
                sendmessage = true
                break;
            end
--[[        if(IsAllied('ARMY_'.. (2+k), 'ARMY_'.. (11-k) )) then
                sendmessage = true
                break
            end ]]--
        end
        for k = 1, 2 do
            local counter = 0
            for _, army in ListArmies() do
--adjust these pairs! They are correct on wonder but maybe not on this map! 
                if ((army == 'ARMY_'..(11+2*k) ) or (army == 'ARMY_'..(18-2*k))) then
                    counter = counter + 1
                end
            end
            if(counter == 1) then
                sendmessage = true
                break;
            end
--[[        if(IsAllied('ARMY_'.. (11+2*k), 'ARMY_'.. (18-2*k) )) then
                sendmessage = true
                break
            end ]]--
        end 
    end
    
    if(sendmessage) then
        WaitSeconds(7)    
        BroadcastMSG(message, 20, 'ff0000', 15, 'center')
    end        
--        local countDownDialog = SimDialogue.Create(LOC('There is a difference in the number of mexes between bot and top'), {'Ok'})
--        countDownDialog.OnButtonPressed = function(self, info)
--            countDownDialog:Destroy()
--        end
        
end

function BroadcastMSG(message, fontsize, RGBColor, duration, location)
----------------------------------------
-- broadcast a text message to players
-- possible locations = lefttop, leftcenter, leftbottom,  righttop, rightcenter, rightbottom, rightbottom, centertop, center, centerbottom
----------------------------------------
	PrintText(message, fontsize, 'ff' .. RGBColor, duration , location) ;
end









------------------------------------------------------------------------
----- Crazyrush part ---------------------------------------------------
------------------------------------------------------------------------
function Crazyrush_checkMassPoint()
    ForkThread( function()
        while(true)do
            local units = GetUnitsInRect({x0 = 0, x1 = ScenarioInfo.size[1], y0 = 0, y1 = ScenarioInfo.size[2]})
            if(units~=nil)then
                for i,unit in units do 
                    if(EntityCategoryContains(categories.MASSEXTRACTION,unit))then
                        posx = unit:GetPosition()[1]
                        posy = unit:GetPosition()[3]
                        if(not Crazyrush_alreadyCheckedExtractor(posx, posy))then
                            Crazyrush_GenerateResourcesMarker(posx - 2, posy)
                            Crazyrush_GenerateResourcesMarker(posx + 2, posy)
                            Crazyrush_GenerateResourcesMarker(posx, posy - 2)
                            Crazyrush_GenerateResourcesMarker(posx, posy + 2)
                        end
                        WaitSeconds( 0.01 )
                    end
                end
            end
            WaitSeconds( 1 )
        end
    end)
end

function Crazyrush_alreadyCheckedExtractor(x,y)
    local foundIt = false
    if(checkedExtractor[x]==nil)then
        checkedExtractor[x]={}
        checkedExtractor[x][y] = true
    else
        if(checkedExtractor[x][y]==nil)then
            checkedExtractor[x][y] = true	
        else
            foundIt = true
        end
    end
    return foundIt
end

function Crazyrush_GenerateResourcesMarker(x, y)
    local foundIt = false
    if(generatedMass[x]==nil)then 
        generatedMass[x]={}
        generatedMass[x][y] = true
    else
        if(generatedMass[x][y]==nil)then 
            generatedMass[x][y] = true
        else
            foundIt = true
        end
    end

    if(not foundIt)then
        tmptable = {x, y}
        table.insert(generatedMass, tmptable)
        marker =
        {
            ['Mass '..(300 + currentResSpot)] =
            {
                ['type'] = STRING( 'Mass' ),
                ['position'] = VECTOR3( x, GetTerrainHeight(x,y), y ),
                ['orientation'] = VECTOR3( 0.00, 0.00, 0.00 ),
                ['size'] = FLOAT( 1.00 ),
                ['resource'] = BOOLEAN( true ),
                ['amount'] = FLOAT( 100.00 ),
                ['color'] = STRING( 'ff808080' ),
                ['editorIcon'] = STRING( '/textures/editor/marker_mass.bmp' ),
                ['prop'] = STRING( '/env/common/props/markers/M_Mass_prop.bp' ),
            },
        }
        currentResSpot = currentResSpot + 1
        Crazyrush_CreateResources(marker)
    end
end

function Crazyrush_CreateResources(markers)
    --local markers = GetMarkers()
    for i, tblData in pairs(markers) do
        if tblData.resource then
            spawnressource(tblData.position, tblData.type)
        end
    end
end







------------------------------------------------------------------------
----- Expansion part ---------------------------------------------------
------------------------------------------------------------------------

-- Expansion script adapted from Primus_Alpha by Super, Ithilis_Quo and Speed2
function Expand_MapExpandConditions()
    local expandmap = ScenarioInfo.Options.expandmap or 1
    
    if(expandmap < 7) then 
        ScenarioFramework.CreateTimerTrigger(Expand_MapExpand, 60*5*(expandmap-2), true)
    end
    if(expandmap >= 7 ) then
        local MexToBuild = Expand_CountMexMarkersInArea('AREA_1') * 0.1* (expandmap + 1)
        while not ScenarioInfo.MapAlreadyExpanded do
            local curMexies = 0
            for _, brain in ArmyBrains do
                curMexies = curMexies + table.getn(ScenarioFramework.GetCatUnitsInArea(categories.MASSEXTRACTION, 'AREA_1', brain))
            end
            if curMexies > MexToBuild then
                if not ScenarioInfo.MapAlreadyExpanded then
                    Expand_MapExpand()
                end
                break
            end
            WaitSeconds(5)
        end
    end
end
 
function Expand_MapExpand()
    if ScenarioInfo.MapAlreadyExpanded == false then
        ScenarioInfo.MapAlreadyExpanded = true
        ScenarioFramework.SetPlayableArea('AREA_1' , false)
    end
end
 
function Expand_CountMexMarkersInArea(area)
    local rect = ScenarioUtils.AreaToRect(area)
    local mexNum = 0
    for markerName, markerTable in Scenario.MasterChain['_MASTERCHAIN_'].Markers do
        if markerTable.type =='Mass' then
            for m = 1, spawnedMexNumber do 
                if markerName == spawnedMassSpots[m] then
                    if ScenarioUtils.InRect(markerTable.position, rect) then
                        mexNum = mexNum + 1
                    end
                end
            end
        end 
    end
    return mexNum
end

function Expand_StartupCheck()
--check if a player is outside of the starting area and expand the map in that case
    ScenarioInfo.MapAlreadyExpanded = false
    local expandmap = ScenarioInfo.Options.expandmap or 2 
    LOG("ULTIMATE Activate map expansion script. Setting = ", expandmap)
    
    for m = 13, 14 do
        armystring = "ARMY_" .. m
        for _, army in ListArmies() do
            if( army == armystring) then
                Expand_MapExpand()
                LOG("ULTIMATE found player outside of playable region. Expand map")
                return false
            end
        end   
    end
    if(expandmap == 1) then
        return false
    end
    if(expandmap == 2) then
        Expand_MapExpand()
        return false
    end
    return true
end






------------------------------------------------------------------------
----- Respawning trees--------------------------------------------------
------------------------------------------------------------------------
function Tree_StartGrowingTrees()
    local SQRTnumberofareas = 1
    if(ScenarioInfo.size[1]>300) then
        SQRTnumberofareas = 4
    elseif(ScenarioInfo.size[1]>600) then
        SQRTnumberofareas = 8
    elseif(ScenarioInfo.size[1]>1200) then
        SQRTnumberofareas = 16
    end
    local m = 0
    local firstIndex = 1
    for i = 0, SQRTnumberofareas - 1 do
        for j = 0, SQRTnumberofareas - 1 do
            m = m + 1           
            local Tree_Area = {
                ["x0"] = ScenarioInfo.size[1]/SQRTnumberofareas*i,
                ["y0"] = ScenarioInfo.size[2]/SQRTnumberofareas*j,
                ["x1"] = ScenarioInfo.size[1]/SQRTnumberofareas*(i+1),
                ["y1"] = ScenarioInfo.size[2]/SQRTnumberofareas*(j+1),
            }
            local numberTreeInArea = Tree_InitializeTrees(Tree_Area, InitialListTrees, firstIndex)
            if(numberTreeInArea > 0) then  
                ForkThread(Tree_RegrowTrees, InitialListTrees, m, firstIndex, firstIndex + numberTreeInArea - 1)
                firstIndex = firstIndex + numberTreeInArea 
            end
        end
    end
    LOG("ULTIMATE Tree script finished initialization, total number of trees = ", firstIndex)
end       

function Tree_InitializeTrees(area, list, firstIndex) 
    local i = firstIndex
    for _, r in GetReclaimablesInRect(area) or {} do
        if (string.find(r:GetBlueprint().BlueprintId, "tree" )) then 
            local storethetree = {  r:GetBlueprint().BlueprintId,
                                    r:GetPosition()['x'],
                                    r:GetPosition()['y'],
                                    r:GetPosition()['z']
                                 }
            list[i] = storethetree 
            i = i + 1
        end
    end
    LOG("ULTIMATE Trees initialized, number in this area = ", i - firstIndex)
    return i - firstIndex
end

function Tree_RegrowTrees(listoftrees, m, firstIndex, lastIndex)
    WaitSeconds(m + 10)
    while( true ) do
        Tree_NextCycle(listoftrees, firstIndex, lastIndex)
    end
end

function Tree_NextCycle(listoftrees, firstIndex, lastIndex)
    local numberToRespawn = 0
    local RespawnOnNextCycle = {}
    local MissingTrees = false
    for i = firstIndex, lastIndex do
        local respawnprop = Tree_CheckIfReclaimed(listoftrees[i])
        if(respawnprop > 0) then
            MissingTrees = true
            if(math.random() < respawnprop/40/TreeRegrowSpeed) then 
                numberToRespawn = numberToRespawn + 1
                RespawnOnNextCycle[numberToRespawn] = i
            end
        end
    end
    WaitSeconds(5)
    if(not MissingTrees) then
        WaitSeconds(30/TreeRegrowSpeed)
    end
    for i, _ in RespawnOnNextCycle or {} do
        CreateProp( VECTOR3( listoftrees[RespawnOnNextCycle[i]][2],
                             listoftrees[RespawnOnNextCycle[i]][3], 
                             listoftrees[RespawnOnNextCycle[i]][4] ), 
                    listoftrees[RespawnOnNextCycle[i]][1])
    end
end

function Tree_CheckIfReclaimed(tree)
    local NumberOfCloseTrees = 0
    
    local area1 = {
        ["x0"] = tree[2] - 0.05,
        ["y0"] = tree[4] - 0.05,
        ["x1"] = tree[2] + 0.05,
        ["y1"] = tree[4] + 0.05,
    }
    for _, t in GetReclaimablesInRect(area1) or {} do
        if(string.find(t:GetBlueprint().BlueprintId, "tree" )) then
            if(tree[2] == t:GetPosition()['x']) then
                if(tree[4] == t:GetPosition()['z']) then
                    if(tree[1] == t:GetBlueprint().BlueprintId) then
                        return  - 1
                    end
                end
            end
        end
    end
    
    local area2 = {
        ["x0"] = tree[2] - 1.5,
        ["y0"] = tree[4] - 1.5,
        ["x1"] = tree[2] + 1.5,
        ["y1"] = tree[4] + 1.5,
    }
    for _, _ in GetReclaimablesInRect(area2) or {} do
        NumberOfCloseTrees = NumberOfCloseTrees + 1
    end
    if(NumberOfCloseTrees > 10) then
        return  10
    end
    return NumberOfCloseTrees
end



------------------------------------------------------------------------
------Faction dependent reclaim-----------------------------------------
------------------------------------------------------------------------
function AddFactionReclaimBack(optional_reclaim_back)
    local SpawnReclaimArmy7 = false
    local SpawnReclaimArmy8 = false
    local armyTable = ListArmies()
    for _, army in armyTable do
        if( army == "ARMY_7") then
            if(GetArmyBrain(army):GetFactionIndex() == 1 or GetArmyBrain(army):GetFactionIndex() == 2) then
                SpawnReclaimArmy7 = true
                ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Top_UEF_2', true)
                if(optional_reclaim_back == 3) then
                    ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Top_UEF_3', true)
                end
            else
                SpawnReclaimArmy7 = true
                ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Top_Cybran_2', true)
                if(optional_reclaim_back == 3) then
                    ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Top_Cybran_3', true)
                end
            end
        end
        if( army == "ARMY_8") then
            if(GetArmyBrain(army):GetFactionIndex() == 1 or GetArmyBrain(army):GetFactionIndex() == 2) then
                SpawnReclaimArmy8 = true
                ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Bot_UEF_2', true)
                if(optional_reclaim_back == 3) then
                    ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Bot_UEF_3', true)
                end
            else
                SpawnReclaimArmy8 = true
                ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Bot_Cybran_2', true)
                if(optional_reclaim_back == 3) then
                    ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Bot_Cybran_3', true)
                end
            end
        end
    end
    if(SpawnReclaimArmy8 and not SpawnReclaimArmy7) then
        ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Top_Cybran_2', true)
        if(optional_reclaim_back == 3) then
            ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Top_Cybran_3', true)
        end
    elseif (not SpawnReclaimArmy8 and SpawnReclaimArmy7) then
        ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Bot_UEF_2', true)
        if(optional_reclaim_back == 3) then
            ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_Back_Bot_UEF_3', true)
        end
    end
end


function gatherFeedback()
        WaitSeconds(10)
        BroadcastMSG('If you see any bugs with the map, plz tell CookieNoob. Thx.',  -- message
                     30,                                                             -- fontsize
                     'ff9400',                                                       -- color
                     10,                                                             -- duration
                     'center')                                                       -- position
end


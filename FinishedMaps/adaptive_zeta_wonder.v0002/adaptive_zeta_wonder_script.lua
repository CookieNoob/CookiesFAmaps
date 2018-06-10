------------------------------------------------------------------------
---------- dynamic spawn script by CookieNoob and KeyBlue --------------
------------------------------------------------------------------------

local ScenarioUtils = import('/lua/sim/ScenarioUtilities.lua')
local ScenarioFramework = import('/lua/ScenarioFramework.lua')
--stuff for the crazyrush script
local currentResSpot = 0
local generatedMass = {}
local checkedExtractor = {}

function ScenarioUtils.CreateResources()
   	-- fetch markers and iterate them
    local automex = ScenarioInfo.Options.automex or 1
    local mirrormex = ScenarioInfo.Options.mirrormex or 1
    local mexside = ScenarioInfo.Options.mexside or 1
    local backmex = ScenarioInfo.Options.backmex or 1    
    local mexplat = ScenarioInfo.Options.mexplat or 1    
    local middlemex = ScenarioInfo.Options.middlemex or 1
    local optional_reclaim_middle = ScenarioInfo.Options.optional_reclaim_middle or 1
    local optional_reclaim_side = ScenarioInfo.Options.optional_reclaim_side or 1
    local optional_civ_base = ScenarioInfo.Options.optional_civ_base or 1
    
   	local markers = ScenarioUtils.GetMarkers();

    
    if optional_reclaim_middle > 1 then
        ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_middle_' .. optional_reclaim_middle, true)
    end
    if optional_reclaim_side > 1 then
        ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Wreckage_side_'.. optional_reclaim_side, true)
    end
    if(optional_civ_base > 1) then
        ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Civilians_Base', false);
        if( (optional_civ_base - math.floor(optional_civ_base/2) * 2) == 1) then
            ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Civilians_Shields', false);
        end
        if(optional_civ_base == 4 or optional_civ_base == 5) then
            ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Civilians_Defences_2', false);
        elseif (optional_civ_base == 6 or optional_civ_base == 7) then
            ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Civilians_Defences_3', false);
        elseif (optional_civ_base == 8 or optional_civ_base == 9) then
            ScenarioUtils.CreateArmyGroup('ARMY_17', 'Optional_Civilians_Defences_4', false);
        end
    end
    
    -- find out if there are spots that do not have a mirror
    -- in that case store the pair in the list with false
    local ArmyList = ListArmies()
    if ScenarioInfo.AdaptiveMap then
        for j, spawnmex in ScenarioInfo.Options.SpawnMex or {} do
            if spawnmex then
                ArmyList[table.getn(ArmyList) + 1] = 'ARMY_' .. j
            end
        end
    end
    mirrorspawns = {}
    for m = 1, 8 do
        mirrorspawns[m]=false;
        for _, army in ArmyList do
            if(army == "ARMY_".. (2*m-1)) then
                for _, armyX in ArmyList do
                    if(armyX == "ARMY_".. (2*m)) then
                        mirrorspawns[m] = true;
                    end
                end
            end
        end
    end

    
    
   	for i, tblData in pairs(markers) do
   		-- spawn resources?
   		local doit = false;
        
        if (tblData.resource and not tblData.SpawnWithArmy) then
        -- standard resources, spawn it
            doit = true;
            
        elseif (tblData.resource and tblData.mexside) then
            doit= true;
            if (mexside == 1 and tblData.mexside2) then
                doit= false;
            end
            if (mexside == 3 ) then
                doit= false;
            end            
  
        elseif (tblData.resource and tblData.mexplat and mexplat == 2) then
            doit= true;

        elseif (tblData.resource and tblData.middlemex) then
            doit= true;
            if (middlemex == 1 and tblData.middlemex2) then
                doit= false;
            end
            if (middlemex == 3 ) then
                doit= false;
            end    
            
        elseif (tblData.resource and tblData.SpawnWithArmy) then
   			-- resources bound to player, check if army is presend
   			for _, army in ArmyList do
                for m = 1, 8 do  
                    if(tblData.SpawnWithArmy == "ARMY".. (2*m-1) or tblData.SpawnWithArmy == "ARMY".. (2*m)) then
                        -- spawn the resources for both players when one of the mirrors is present
                        if (mirrormex == 1) then    
                            if(army == "ARMY_".. (2*m-1) or army == "ARMY_".. (2*m) ) then 
                                doit = true;
                                break;
                            end
                        else
                        -- only spawn resources when both mirrors are present
                            if( mirrorspawns[m] and (army == "ARMY_".. (2*m-1) or army == "ARMY_".. (2*m) ) ) then 
                                doit = true;
                                break;
                            end
                        end
                    end
                end
            end
            
            
            if(tblData.SpawnWithArmy == "none") then
                doit=true;
            end
                      
            -- disables dynamic spawn and only spawns a preset of mex
            if(automex==2) then
                doit = true;
                for m = 9, 16 do
                    if (tblData.SpawnWithArmy == "ARMY" .. m) then
                        doit= false;
                    end
                end
            elseif(automex==3) then
                doit = true;
                for m = 11, 16 do
                    if (tblData.SpawnWithArmy == "ARMY" .. m) then
                        doit= false;
                    end
                end
                if(tblData.SpawnWithArmy == "ARMY1" or tblData.SpawnWithArmy == "ARMY2") then
                    doit=false;
                end    
            elseif(automex==4) then
                doit = true;
                for m = 11, 16 do
                    if (tblData.SpawnWithArmy == "ARMY" .. m) then
                        doit= false;
                    end
                end              
            elseif(automex==5) then    
                doit = true;
            elseif(automex==6) then
                if (tblData.type == "Mass" and doit) then
                    doit = false;
                    local spawnonemexonly = {81,28,32,2,5,21,113,114,11,19,121,122,14,35,71,74,133,134}
                    doit = TrueIfInList(i,spawnonemexonly,MassString)
                end
            end
            
            
            if(tblData.backmex and backmex == 2) then
                doit=true;
            elseif(tblData.backmex and backmex == 3) then
                if(tblData.backmex2) then
                    doit= false;
                end
            elseif(tblData.backmex and backmex == 4) then
                if(tblData.backmex2 or tblData.backmex3) then
                    doit= false;
                end                
            end    
            
            if(tblData.mexplat and mexplat == 2) then
                doit = true;
            end
        end
        
        if (doit) then
            spawnressource(tblData.position,tblData.type)
        end
   	end
end

function OnPopulate()
    ScenarioUtils.InitializeArmies()
end

function MassString(_mexname)
    if(_mexname > 9) then
        return "Mass " .. _mexname;
    else 
        return "Mass 0" .. _mexname;
    end   
end   

function TrueIfInList(name, list, string_function)
    for k = 1, table.getn(list) do  
        if(name == (string_function(list[k]))) then
            return true
        end
    end
    return false
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
                ['position'] = VECTOR3( x, GetSurfaceHeight(x,y), y ),
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
            if(math.random() < respawnprop/30/TreeRegrowSpeed) then 
                numberToRespawn = numberToRespawn + 1
                RespawnOnNextCycle[numberToRespawn] = i
            end
        end
    end
    WaitSeconds(30)
    if(not MissingTrees) then
        WaitSeconds(110/TreeRegrowSpeed)
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
    local area2 = {
        ["x0"] = tree[2] - 1.5,
        ["y0"] = tree[4] - 1.5,
        ["x1"] = tree[2] + 1.5,
        ["y1"] = tree[4] + 1.5,
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
    
    for _, t in GetReclaimablesInRect(area2) or {} do
        if(string.find(t:GetBlueprint().BlueprintId, "tree" )) then
            NumberOfCloseTrees = NumberOfCloseTrees + 1
        end
        if(NumberOfCloseTrees > 20) then
            return - 1
        end
    end
    if NumberOfCloseTrees > 10 then
        return 21- NumberOfCloseTrees
    else
        return NumberOfCloseTrees
    end
end


function BroadcastMSG(message, fontsize, RGBColor, duration, location)
----------------------------------------
-- broadcast a text message to players
-- possible locations = lefttop, leftcenter, leftbottom,  righttop, rightcenter, rightbottom, rightbottom, centertop, center, centerbottom
----------------------------------------
	PrintText(message, fontsize, 'ff' .. RGBColor, duration , location) ;
end

function OnStart()
    local automex = ScenarioInfo.Options.automex or 1
    if(automex >5) then
        ForkThread(Crazyrush_checkMassPoint)
    end
    --activate regrowing trees
    TreeRegrowSpeed = ScenarioInfo.Options.tree or 1
    if(TreeRegrowSpeed > 1) then
        ForkThread(Tree_StartGrowingTrees)
    end
end
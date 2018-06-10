------------------------------------------------------------------------
----- Script by CookieNoob and KeyBlue ---------------------------------
------------------------------------------------------------------------
local ScenarioUtils = import('/lua/sim/ScenarioUtilities.lua')
local ScenarioFramework = import('/lua/ScenarioFramework.lua')
local Tables = import('/maps/adaptive_flooded_tabula_rasa.v0002/adaptive_flooded_tabula_rasa_tables.lua')

--stuff for the crazyrush script
local currentResSpot = 0
local generatedMass = {}
local checkedExtractor = {}

--stuff for expansion script
local spawnedMassSpots={}
local spawnedMexNumber = 0



------------------------------------------------------------------------
----- Initialization part ----------------------------------------------
------------------------------------------------------------------------
function OnPopulate()
    ScenarioFramework.SetPlayableArea('AREA_1' , false)
    ScenarioUtils.InitializeArmies();
end
function OnStart()
    --check if a message needs to be displayed
    ForkThread(showmessage)
    --activate crazyrush in case the correct option is checked
    local automex = ScenarioInfo.Options.automex or 1
    if(automex >5) then
        ForkThread(Crazyrush_checkMassPoint)
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
    local underwatermex = ScenarioInfo.Options.underwatermex or 1    
    local optional_reclaim = ScenarioInfo.Options.optional_reclaim or 1
    local mirrormex = ScenarioInfo.Options.mirrormex or 1
    local optional_civilian_base = ScenarioInfo.Options.optional_civilian_base or 1
-- get map markers
    local markers = ScenarioUtils.GetMarkers();
    
    

    
-- table of which ressources belong to which player, it is sorted in such a way that the first line 
-- corresponds to player one, the second to player 2 and so on... load it from the _tables.lua file
    
------------------------------------------------------------------------
----- special options (civilians, reclaim...) --------------------------
------------------------------------------------------------------------
    if ((optional_reclaim == 2) or (optional_reclaim == 3)) then
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Wreckage_' .. optional_reclaim, true)
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Civilians_2', false)
    elseif (optional_reclaim == 4) then
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Wreckage_2', true)
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Wreckage_3', true)
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Civilians_2', false)
    end
    if optional_reclaim_side == 2 then
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Wreckage_4', true)
    end
    
    if(optional_civilian_base > 1) then
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Civilians_'..optional_civilian_base + 1, false)
    end
    if(optional_civilian_base == 4) then
        ScenarioUtils.CreateArmyGroup('ARMY_15', 'Optional_Civilians_4', false)
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
                doit=FalseIfInList(name, spwnAdditionalmiddlemass[l], MassString, doit);
            end
            for l = 1, sidemex - 1  do
                doit=FalseIfInList(name, spwnAdditionalsidemass[l], MassString, doit);
            end
            for l = 1, underwatermex - 1  do
                doit=FalseIfInList(name, spwnAdditionalunderwatermex[l], MassString, doit);
            end 
        end
        
        if(automex == 6) then
            doit = DoitIfInList(name, crazyrushOneMex, MassString, doit);
        end
        
        
   		if (doit) then
            if(tblData.type == 'Mass') then
                spawnedMexNumber = spawnedMexNumber + 1
                spawnedMassSpots[spawnedMexNumber] = name
            end
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
        BroadcastMSG(message)
    end        
--        local countDownDialog = SimDialogue.Create(LOC('There is a difference in the number of mexes between bot and top'), {'Ok'})
--        countDownDialog.OnButtonPressed = function(self, info)
--            countDownDialog:Destroy()
--        end
        
end

BroadcastMSG = function(message)
----------------------------------------
-- broadcast a text message to players
-- possible locations = lefttop, leftcenter, leftbottom,  righttop, rightcenter, rightbottom, rightbottom, centertop, center, centerbottom
----------------------------------------
    WaitSeconds(7)
    local fontsize = 20
    local RGBColor = 'ff0000'
    local duration = 15
    local location = 'center'
	PrintText(message, fontsize, 'ff' .. RGBColor, duration , location) ;
end









------------------------------------------------------------------------
----- Crazyrush part ---------------------------------------------------
------------------------------------------------------------------------

function Crazyrush_checkMassPoint()
	ForkThread( function()
		while(true)do
			local units = GetUnitsInRect({x0 = 0, x1 = 512, y0 = 0, y1 = 512})
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
			['Mass '..(100 + currentResSpot)] =
			{
				['type'] = STRING( 'Mass' ),
				['position'] = VECTOR3( x, 0, y ),
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
    local expandmap = ScenarioInfo.Options.expandmap or 2
    
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
        ScenarioFramework.SetPlayableArea('AREA_2' , false)
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
    local expandmap = ScenarioInfo.Options.expandmap or 1 
    if(expandmap == 1) then
        return false
    end
    if(expandmap == 2) then
        Expand_MapExpand()
        return false
    end
    for m = 7, 12 do
        armystring = "ARMY_" .. m
        for _, army in ListArmies() do
            if( army == armystring) then
                Expand_MapExpand()
                return false
            end
        end   
    end
    return true
end



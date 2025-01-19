function SavegameFixups.PXFixes()
	local toBurn = {"BrightMind","EncryptionExpert","HighRisk"}
	local setMachine = false
	print("Checking for RoboSexuals!")
	MapForEach(true, "Human", function(unit)
		if unit:HasTrait("Machine") and unit:GetRelationship("Lover") then
			unit:SetRelationship(unit:GetRelationship("Lover"), "ExLover")
		end
		if unit:HasTrait("Machine") then
			unit:SetTrait("baseDroid", true, "forced") -- force droid to become a new droid
			setMachine = true
		end
	end)
	if not MapVarValues['px_tut'] == nil then
		if setMachine then
			ForceActivateStoryBit("px_droid_intro")
		end
	end
	-- local success, response = pcall(px_set_map_vars(),nil)
	-- print("Setting Map vars was: ",success)
	-- print("Setting the cooldowns to reasonable!") 
	local cds = Game:GetCooldowns()
	for id, no in ipairs(cds) do
		if id == "Attack" and no > MoonInstance.AttackCooldownMin then
			print("Attack Cooldown reset because it was above max!")
			Game:SetCooldown("Attack", MoonInstance.AttackCooldownMin, true)
		end
		if id == "MinTimeBetweenAttacks" and no > 128000 then
			print("MinTimeBetweenAttacks reset because it was above max!")
			Game:SetCooldown("MinTimeBetweenAttacks", MoonInstance.AttackCooldownMin, true)
		end
	end
end

local function are_prereqs_loaded()
	print("Checking for PX PreReqs")
	local ilu = false
	local comlib = false
	for _,mod in ipairs(ModsLoaded) do
		if mod.id == 'rtw6tLg' then
			print("Found ILU")
			ilu = true
		elseif mod.id == 'sad_commonlib' then
			print("Found commonlib")
			comlib = true
		end
	end
	if not (ilu and comlib) then
		ForceActivateStoryBit("PreReqs_Not_Found")
	end
end

function test()
	local bin = table.find(MapVars,"px_tut")
	if bin then
		print("px_tut Exists!")
	else
	    print("px_tut does not exist!")
	end
	local bin = table.find(MapVars,"test")
	if bin then
		print("test Exists!")
	else
	    print("test does not exist!")
	end
end

local function fibCount(no)
-- create Fibonacci sequence
  local fib = {1, 1}  -- starting with 1, 2
  if no < 2 then
  	return fib[no]
  end
  for i=3, no do
    fib[i] = fib[i-2] + fib[i-1]
  end
  return fib[no]
end

function droid_cost_calc(count)
	print("Droid count check, updating repair kits and coins to purchase another one")
	local count = count or 0
	local droid_resource_mapping = {
		{name='Money',scale=500000},
		{name='EnergyCrystals',scale=100},
		{name='OrganBox',scale=50},
	}
	local drm_index = 1
	for _, v in ipairs(AllSurvivors) do
		for _, t in ipairs(v['traits']) do
			if v['UnitTags']['Robot'] then
				count = count + 1
			end
		end
	end
	print("There are ",count," droids fielded")
	local count = (count+1)
	while (count>7 and drm_index~=3) do
		count = count - 7
		drm_index=drm_index+1
	end
	local f_count = fibCount(count)
	local resource = droid_resource_mapping[drm_index]['name']
	local amount = f_count * droid_resource_mapping[drm_index]['scale']
	-- to-do set droid price return resource, amount
	print("The resource cost is now: ",resource,". And the amount is: ",amount)
	return resource, amount
end

function human_cost_calc()
	print("Calculating how many survivng humans there are, and 	update the costs for good/criminal colonists")
	local count = 0
	local base_price = 250000
	local premium_mult = 2
	local criminal_multi = 0.33333333
	for _, v in ipairs(AllSurvivors) do
		if v['UnitTags']['Human'] or v['UnitTags']['android'] then
			count = count + 1
		end
	end
	print("There are ",count," colonists fielded")
	local f_count = fibCount(count+1)
	-- to-do set normal / premium / criminal MapVar costs for new hire
end

function diminishReturnCheck(classname)
	print("diminish return check")
	print(classname)
	local roll = InteractionRand(100, "CheckRandom")
	print("Need to see a reduction above: ",roll)
	local no  = MapCount("map", classname)
	print(no," objects Found!")
	local reductions = (60*no) / (no+4)+15
	print("Chance to succeed: ",reductions,'%')
	if reductions > roll then
		print("Override succeeded")
		return true 
	else
		print("Override failed!")
		return false
	end
end

function TFormat.DroidRepairKits(context_obj)
    return droid_repair_needed
end

function px_set_map_vars()
	local all_vars = {
		{name="px_Empire_rapport",init=500},
		{name="px_phyrexia_rapport",init=0},
		{name="px_Empire_state",init=1},
		{name="px_black_market_state",init=false},
		{name="px_phrexia_state",init=false},
		{name="px_tut",init=false},
		{name="px_droid_tut",init=false},
		{name="px_black_market_rapport",init=0},
		{name="px_black_market_rapport",init=0},
		{name="hire_cost",init=50000},
		{name="droid_hire_cost",init=100000},
		{name="droid_hire_resource",init='Money'},
		{name="droid_repair_needed",init=5},
		{name="colonist_cost",init=false},
		{name="colonist_expensive_cost",init=false},
		{name="colonist_criminal_cost",init=false},
		{name="animal_override",init=false},
		{name="animal_override_attempted",init=false},
		{name="animal_temperament_attempted",init=false},
		{name="animal_temperament_overrive",init=false},
	}
	print("Checking what PX vars I need to add!")
	for _, var in ipairs(all_vars) do
		if MapVarValues[var['name']] == nil then
			MapVar(var['name'],var['init'])
			print("I added ",var['name'],' to MapVars!')
		else
			print("I did not add ",var['name'])
		end
	end
	print("Done! See above logs for which ones I added")
end

local function px_init(id)
	id = id or CurrentModId
	if CurrentModId ~= id then return end
	px_set_map_vars()
end

local function px_full()
	px_init('ucCehPy')
	are_prereqs_loaded()
	return
end

OnMsg.LoadGame = px_full
OnMsg.Start = px_init
OnMsg.GameStarted = px_full
OnMsg.NewGame = px_full
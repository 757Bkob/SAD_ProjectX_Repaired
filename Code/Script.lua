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
		elseif mod.id == '' then
			print("Someone has beyond stranded as well!")
			Presets.ActivitySet.Default.Work.Activities.AT_Excavate = true
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

function px_gal_droid_raw(pct, free)
	return GetPaymentModifiedByPct(gal_hire_cost_calc(free,'Droid'),pct)
end

function px_gal_human_raw(pct,free)
	return GetPaymentModifiedByPct(gal_hire_cost_calc(free,'Human'),pct)
end

function gal_hire_cost_calc(no_free,type)
	local no_free = no_free or 1
	local type = type or 'Human'
	--print("counting # of ",type," deployed to get next price")
	local count = 0
	local base_price = 100000 --100,000
	if IsGameRuleActive('RandomSurvivors') then
		base_price = base_price * 9 / 10 -- reward players for playing with randomness
	end
	local drm_index = 1
	for _, v in ipairs(AllSurvivors) do
		if v['UnitTags']['Robot'] and type == 'Droid' then
			count = count + 1
		elseif (v['UnitTags']['Human'] or v['UnitTags']['Android']) and type == 'Human' then
			count = count + 1
		end
	end
	--print("There are ",count," ",type," fielded")
	--print("Not counting ",no_free," of them due to reasons!")
	if count < no_free and no_free >= 0 then
		return 0 * base_price * const.ResourceScale
	else
		count = count - no_free
	end
	return fibCount(count+1) * base_price * const.ResourceScale
end

function diminishReturnCheck(classname)
	--print("diminish return check")
	--print(classname)
	local roll = InteractionRand(100, "CheckRandom")
	--print("D100 rolled a: ",roll," the tower formula needs to spit out to a higher #!")
	local no  = MapCount("map", classname)
	--print(no," objects Found!")
	local reductions = (60*no) / (no+4)+15
	--print("Tower formula spat out: ",reductions)
	if reductions > roll then
		--print("Override succeeded")
		return true
	else
		--print("Override failed!")
		return false
	end
end

function px_droid_repair()
	local count = 0
	for _, v in ipairs(AllSurvivors) do
		if v['UnitTags']['Robot'] then
			count = count + 1
		end
	end
	return (count+1) * 1000 * 5
end

-- Based on src/Lua/Human.Lua -> GetSurvivorSpawnPool
-- Also based on src/Lua/
function custom_hire_calc(context,skill,tag_sneak)
	context = context or empty_table
	sneak_add = sneak_add or false
	local player = UIPlayer
	local all_spawn_pool = empty_table
	local fin_spawn_pool = {}
	local remove = table.remove
	local temp_char = nil
	local possible_skill_level = 0
	local possible_inclination = ''
	local mod_dict = false
	local is_from_px = false
	local is_droid = false
	local is_other_modded = false
	all_spawn_pool = table.keys(CharacterDefs, true)
	for i = #(all_spawn_pool or ""), 1, -1 do
		-- remove already spawned survivors from pool
		if SpawnedSurvivorIds[all_spawn_pool[i]] then
			remove(all_spawn_pool, i)
		end 
	end	
	for i = #all_spawn_pool, 1, -1 do
		if skill then
			possible_skill_level = CharacterDefs[all_spawn_pool[i]]['Skills'][skill] or 1
			possible_inclination = CharacterDefs[all_spawn_pool[i]]['SkillInclinations'] or 'Not Set'
			is_droid = CharacterDefs[all_spawn_pool[i]]['UnitTags']['Droid'] or false
			if possible_skill_level > 4 or possible_inclination == 'Interested' and not is_droid then
				fin_spawn_pool[#fin_spawn_pool+1] = all_spawn_pool[i]
			end
		end
		if tag_sneak then
			mod_dict = CharacterDefs[all_spawn_pool[i]]['mod'] or false
			if mod_dict then
				if mod_dict['id'] ~= 'ucCehPy' then
					-- This means there is a modded character without any PX mods
					if AsyncRand(90) > 100 then
						print('test')
					end
				end
			end
		end
	end
	print(fin_spawn_pool)
end

function TFormat.not_enough_droid_repair(context_obj)
	return FormatResource(Resources["PX_droidRepair"], px_droid_repair())
end

function TFormat.px_gal_droid(context_obj,pct,free)
	free = free or 1
	pct = pct or 100
	local cost_without_scale = gal_hire_cost_calc(free,'Droid') / const.ResourceScale
	return StoryBitFormatCost(GetPaymentModifiedByPct(cost_without_scale,pct))
end

function TFormat.px_gal_human(context_obj,pct,free)
	pct = pct or 100
	free = free or 5
	local cost_without_scale = gal_hire_cost_calc(free,'Droid') / const.ResourceScale
	return StoryBitFormatCost(GetPaymentModifiedByPct(cost_without_scale,pct))
end

function TFormat.place_final_if_random(context_obj)
	if IsGameRuleActive("RandomSurvivors") then return Untranslated(':: <color TextNegative>Final Answer!</color>') else return '' end
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
		{name="droid_repair_needed",init=5},
		{name="animal_override",init=false},
		{name="animal_override_attempted",init=false},
		{name="animal_temperament_attempted",init=false},
		{name="animal_temperament_overrive",init=false},
	}
	print("Checking what PX vars I need to add!")
	for _, var in ipairs(all_vars) do
		if MapVarValues[var['name']] == nil then
			MapVar(var['name'],var['init'])
			MapVarValues[var['name']] = var['init']
			print("I added ",var['name'],' to MapVars!')
		elseif var['init'] and not MapVarValues[var['name']] then -- need to re-initialize
			print("Found MapVar ",var['name']," in an error state!")
			MapVarValues[var['name']]= var['init']
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
	CreateRealTimeThread(are_prereqs_loaded())
	return
end

OnMsg.LoadGame = px_full
OnMsg.GameStarted = px_full
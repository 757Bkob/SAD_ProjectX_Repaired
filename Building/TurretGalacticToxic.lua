UndefineClass('TurretGalacticToxic')
DefineClass.TurretGalacticToxic = {
	__parents = { "FortificationTurret", "MalfunctionOverTimeComponent", "ResConsumerDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "FortificationTurret",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "WirelessGalacticTurret",
		}),
	},
	BuildMenuCategory = "sub_GalacticWirelessTurretsPX",
	display_name = T(680716455072, --[[ModItemBuildingCompositeDef TurretGalacticToxic display_name]] "Wireless Toxic Turret"),
	description = T(979023229595, --[[ModItemBuildingCompositeDef TurretGalacticToxic description]] "<style blue>Wireless Toxic Turret</style>\nWireless Automated defense station. Shoots rounds of ammunition filled with toxic chemicals that when punctured into the bloodstream can cause <color TextNegative>poisoning</color> and <color TextNegative>paralysis</color>. \n\n<style red>Element:</style> \n<color TextNegative>Blunt</color> | <color TextNegative>Piercing</color> | <color TextNegative>Energy</color> | <color TextPositive>Gas</color> | <color TextNegative>Pacify</color>"),
	menu_display_name = T(530212275422, --[[ModItemBuildingCompositeDef TurretGalacticToxic menu_display_name]] "Wireless Toxic Turret"),
	BuildMenuIcon = "Trade/WirelessTurretsMachinegun.png",
	BuildMenuPos = 10,
	display_name_pl = T(764802248276, --[[ModItemBuildingCompositeDef TurretGalacticToxic display_name_pl]] "Wireless Toxic Turret"),
	display_name_short = T(191916474718, --[[ModItemBuildingCompositeDef TurretGalacticToxic display_name_short]] "Turret"),
	labels = {
		"CPUCoreDevice",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		Metal = 100000,
		PowerCell = 1000,
	}),
	construction_points = 200000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 50000,
	}),
	HitNegationChance = {
		blunt = 10,
		energy = 10,
		gas = 10,
		pacify = 10,
		piercing = 10,
	},
	deconstruction_output = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		ScrapMetal = 50000,
	}),
	Health = 500000,
	MaxHealth = 500000,
	damage_reduction = {
		blunt = 10,
		energy = 10,
		gas = 10,
		pacify = 10,
		piercing = 10,
	},
	RoomPlacement = "outdoors",
	lock_block_box = box(-600, -600, 0, 600, 600, 1400),
	lock_pass_box = box(-1200, -1200, 700, 1200, 1200, 2800),
	terrain_change = "soil",
	soil_form = "circle",
	apply_res_reqs = false,
	progress = 50000,
	attack_attraction = 60,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	SightRange = 70000,
	SwitchTargetChance = 100,
	CombatSearchCacheTime = 20000,
	AttackMemory = 5000,
	CombatGiveUpNoHit = 10000,
	CombatDisengageDist = 10000,
	CombatDisengageCooldown = 5000,
	CombatFleeAccuracy = 90,
	track_flying_targets = true,
	attack_weapon = "GalacticToxicTurret",
	attack_retarget = true,
	MalfunctionOverTimeComponent = true,
	ResConsumerDeviceComponent = true,
	MinTimeToMalfunction = 38400000,
	MaxTimeToMalfunction = 76800000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	PowerConsumption = 40000,
	HasSmartConnection = true,
	res_consumed = "PowerCell",
	res_stored = 1000,
	res_operate_time = 23040000,
	res_start_fueled = true,
}

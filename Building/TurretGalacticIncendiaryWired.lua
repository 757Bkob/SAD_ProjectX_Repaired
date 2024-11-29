UndefineClass('TurretGalacticIncendiaryWired')
DefineClass.TurretGalacticIncendiaryWired = {
	__parents = { "FortificationTurret", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "FortificationTurret",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "WirelessGalacticTurret",
		}),
	},
	BuildMenuCategory = "sub_GalacticWirelessTurretsPX",
	display_name = T(318715555870, --[[ModItemBuildingCompositeDef TurretGalacticIncendiaryWired display_name]] "Wired Incendiary Turret"),
	description = T(284058077395, --[[ModItemBuildingCompositeDef TurretGalacticIncendiaryWired description]] "<style blue>Wired Incendiary Turret</style>\nWired Automated defense station. Shoots Incendiary Missiles at all targets in its range. Does not require a target zone has a 360 area of vision. Can cause <color TextNegative>burning</color> and <color TextNegative>fire spread</color> across a 10 meter zone.\n\n<style red>Element:</style> \n<color TextNegative>Blunt</color> | <color TextNegative>Piercing</color> | <color TextPositive>Energy</color> | <color TextNegative>Gas</color> | <color TextNegative>Pacify</color>"),
	BuildMenuIcon = "Trade/WirelessTurretsMissile.png",
	BuildMenuPos = 20,
	display_name_pl = T(196225278155, --[[ModItemBuildingCompositeDef TurretGalacticIncendiaryWired display_name_pl]] "Wired Incendiary Turret"),
	display_name_short = T(850411301766, --[[ModItemBuildingCompositeDef TurretGalacticIncendiaryWired display_name_short]] "Turret"),
	labels = {
		"CPUCoreDevice",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		Metal = 100000,
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
	lock_pass_box = box(-600, -600, 0, 600, 600, 7000),
	terrain_change = "soil",
	soil_form = "circle",
	apply_res_reqs = false,
	access_range = 2400,
	progress = 50000,
	attack_attraction = 60,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	SightRange = 60000,
	hit_chance_bonus = 100,
	attack_weapon = "GalacticIncendiaryTurret",
	attack_retry = true,
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	MinTimeToMalfunction = 38400000,
	MaxTimeToMalfunction = 76800000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 40000,
	HasSmartConnection = true,
	res_consumed = "PowerCell",
	res_stored = 1000,
	res_operate_time = 23040000,
	res_start_fueled = true,
}


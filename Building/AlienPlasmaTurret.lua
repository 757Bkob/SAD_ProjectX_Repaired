UndefineClass('AlienPlasmaTurret')
DefineClass.AlienPlasmaTurret = {
	__parents = { "FortificationTurret", "ResConsumerDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "FortificationTurret",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "AlienPlasmaTurret",
		}),
	},
	BuildMenuCategory = "sub_AlienTurretsPX",
	display_name = T(511816783937, --[[ModItemBuildingCompositeDef AlienPlasmaTurret display_name]] "Alien Plasma Turret"),
	description = T(433897936767, --[[ModItemBuildingCompositeDef AlienPlasmaTurret description]] "<color TextPositive>Alien Plasma Turret</color>\nAlien Enhanced Automated defense station. Shoots at all targets in its range. Has increased damage, speed, efficiency, defense and range. Wireless turret. Its a technological breakthrough. A turret capable of destruction, but very expensive to maintain, let alone build. Fitted with heat seeking vision, capable of shooting tagets in the dark and incendiary plasma rounds, capable of inflicting <color red>burning</color> and <color TextPositive>alien</color> health conditions.\n\n<style red>Element:</style> \n<color TextNegative>Blunt</color> | <color TextPositive>Piercing</color> | <color TextPositive>Energy</color> | <color TextNegative>Gas</color> | <color TextNegative>Pacify</color>"),
	menu_display_name = T(666645757031, --[[ModItemBuildingCompositeDef AlienPlasmaTurret menu_display_name]] "Alien Plasma Turret"),
	BuildMenuIcon = "CriminalActivity/AlienPlasmaTurret.png",
	BuildMenuPos = 30,
	display_name_pl = T(485554227087, --[[ModItemBuildingCompositeDef AlienPlasmaTurret display_name_pl]] "Alien Plasma Turret"),
	display_name_short = T(148411613007, --[[ModItemBuildingCompositeDef AlienPlasmaTurret display_name_short]] "Turret"),
	entity = "Turret_Gun",
	labels = {
		"CPUCoreDevice",
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		AlienCore = 1000,
		AlienCrystal = 5000,
		AlienElectronics = 5000,
		AlienProcessor = 3000,
	}),
	construction_points = 200000,
	HitNegationChance = {
		blunt = 50,
		energy = 50,
		gas = 50,
		pacify = 50,
		piercing = 50,
	},
	deconstruction_output = PlaceObj('ConstructionCost', {
		AlienCore = 1000,
		AlienCrystal = 5000,
		AlienElectronics = 2000,
		AlienProcessor = 1000,
	}),
	Health = 1800000,
	MaxHealth = 1800000,
	DamagedStateAt = 50,
	BrokenStateAt = 10,
	OperationalIntegrity = 5,
	damage_reduction = {
		blunt = 50,
		energy = 50,
		gas = 50,
		pacify = 50,
		piercing = 50,
	},
	irritation_radius = 70000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-600, -600, 0, 600, 600, 1400),
	lock_pass_box = box(-1200, -1200, 700, 1200, 1200, 2800),
	terrain_change = "soil",
	soil_form = "circle",
	apply_res_reqs = false,
	access_range = 2400,
	progress = 50000,
	attack_attraction = 60,
	affected_by_disasters = set(),
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	enable_overlay_on_selection = {
		RangeOverlay = true,
	},
	SightRange = 250000,
	DistressEnrageChance = 100,
	DistressEnrageCount = 10,
	DistressCallRange = 50000,
	DistressCallRangeFirst = 75000,
	SwitchTargetChance = 100,
	CombatDisengageCooldown = 1000,
	combat_rotate_speed = 12000,
	attack_pitch_min = -3007,
	track_flying_targets = true,
	hit_chance_bonus = 50,
	attack_weapon = "AlienPlasmaTurret",
	attack_retry = true,
	attack_retarget = true,
	ResConsumerDeviceComponent = true,
	MaxTimeToMalfunction = 14400000,
	MinMalfunctionDamage = 10,
	MaxMalfunctionDamage = 25,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	PowerConsumption = 50000,
	HasSmartConnection = true,
	res_consumed = "AlienCore",
	res_stored = 1000,
	res_operate_time = 46080000,
	res_request_threshold = 20,
	res_start_fueled = true,
}

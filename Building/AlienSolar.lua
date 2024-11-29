UndefineClass('AlienSolar')
DefineClass.AlienSolar = {
	__parents = { "SolarPanelAutomated", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "SolarPanelAutomated",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "AlienSolarPanel",
		}),
	},
	BuildMenuCategory = "sub_AlienPowerPX",
	display_name = T(105687185357, --[[ModItemBuildingCompositeDef AlienSolar display_name]] "Alien Solar Panel"),
	description = T(385302722940, --[[ModItemBuildingCompositeDef AlienSolar description]] "Generates increased <color TextEmphasis>Electricity</color><image 'UI/Icons/Resources/res_electricity' 1100> during the day. Cannot be effected by weather conditions, has increased efficiency, durability and energy output."),
	menu_display_name = T(262280586965, --[[ModItemBuildingCompositeDef AlienSolar menu_display_name]] "Alien Solar Panel"),
	menu_description = T(500260070761, --[[ModItemBuildingCompositeDef AlienSolar menu_description]] "Alien Solar Panel generates electricity during the day. Has increased output and capacity. Weather resistant."),
	BuildMenuIcon = "CriminalActivity/AlienSolarPanel.png",
	BuildMenuPos = 4,
	display_name_pl = T(588568868631, --[[ModItemBuildingCompositeDef AlienSolar display_name_pl]] "Alien Solar Panel"),
	display_name_short = T(392021072937, --[[ModItemBuildingCompositeDef AlienSolar display_name_short]] "Alien Solar"),
	entity = "GraphenSolarPanel",
	labels = {
		"PowerSources",
		"ToxicAirPowerProductionAffected",
		"SolarFlarePowerProductionAffected",
		"DustStormPowerProductionAffected",
		"BerserkTargets",
	},
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		AlienCore = 1000,
		AlienProcessor = 2000,
		CarbonNanotubes = 100000,
	}),
	construction_points = 100000,
	repair_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 40000,
	}),
	Health = 1500000,
	MaxHealth = 1500000,
	damage_reduction = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 30,
		piercing = 30,
	},
	RoomPlacement = "outdoors",
	CanPlaceInShelter = false,
	lock_block_box = box(-600, -1800, 0, 1800, 600, 2100),
	MinConstructionSkill = 6,
	terrain_change = "soil",
	soil_border = 600,
	soil_form = "circle",
	apply_res_reqs = false,
	access_range = 2400,
	realtime_working_anim = true,
	attack_attraction = 20,
	affected_by_disasters = set(),
	composite_part_parent = {
		Arm = "Base",
		Panel = "Arm",
		Propeller = "Base",
	},
	composite_part_spots = {
		Arm = "Arm",
		Panel = "Panel",
		Propeller = "Propeller",
	},
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	MinTimeToMalfunction = 96000000000000000,
	MaxTimeToMalfunction = 960000000000000000,
	MinMalfunctionDamage = 0,
	MaxMalfunctionDamage = 0,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerGenerator = true,
	Production = 1215000,
	PowerProductionStopsAtNight = true,
}


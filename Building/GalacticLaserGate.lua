UndefineClass('GalacticLaserGate')
DefineClass.GalacticLaserGate = {
	__parents = { "ForceFieldGate", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "ForceFieldGate",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "TradeFortifications",
		}),
	},
	BuildMenuCategory = "sub_GalacticFortificationsGatesPX",
	display_name = T(666764063641, --[[ModItemBuildingCompositeDef GalacticLaserGate display_name]] "Galactic Laser Gate"),
	description = T(668005029553, --[[ModItemBuildingCompositeDef GalacticLaserGate description]] "An impenetrable barrier powered by electricity that consumes more energy with each successive attack. Provides unrestricted access if kept open or when deactivated. People can pass through closed gates and lead animals through them. Has been upgraded using Galactic materials and military grade components which improve its efficiency, durability and armour plating."),
	menu_display_name = T(263952228319, --[[ModItemBuildingCompositeDef GalacticLaserGate menu_display_name]] "Galactic Laser Gate"),
	BuildMenuIcon = "Trade/GalacticFortificationGate.png",
	BuildMenuPos = 40,
	display_name_pl = T(362655332158, --[[ModItemBuildingCompositeDef GalacticLaserGate display_name_pl]] "Galactic Laser Gate"),
	display_name_short = T(702272768320, --[[ModItemBuildingCompositeDef GalacticLaserGate display_name_short]] "Gate"),
	entity = "Fort_EM_Gate",
	labels = {
		"Structures",
	},
	is_building = false,
	update_interval = 10000,
	can_turn_off = true,
	turn_on_text = T(767364704601, --[[ModItemBuildingCompositeDef GalacticLaserGate turn_on_text |gender-variants]] "Close"),
	turn_off_text = T(577086148462, --[[ModItemBuildingCompositeDef GalacticLaserGate turn_off_text |gender-variants]] "Open"),
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 20000,
		Metal = 20000,
	}),
	construction_points = 35000,
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 20000,
	}),
	Health = 400000,
	MaxHealth = 400000,
	damage_reduction = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 30,
		piercing = 30,
	},
	use_upgrade_dummy = false,
	upgrade_label = "Gate",
	RoomPlacement = "outdoors",
	lock_block_box = box(0, -1800, 0, 0, 1800, 2100),
	lock_pass_box = box(-600, -1800, 0, 600, 1800, 2100),
	IgnoredObstacles = {
		"FortificationColumnElement",
	},
	MinConstructionSkill = 5,
	can_be_moved = false,
	apply_res_reqs = false,
	turning_on_text = T(184637801060, --[[ModItemBuildingCompositeDef GalacticLaserGate turning_on_text]] "Waiting to be closed"),
	turning_off_text = T(902297366950, --[[ModItemBuildingCompositeDef GalacticLaserGate turning_off_text]] "Waiting to be opened"),
	has_turned_off_warning = false,
	turn_on_icon = "UI/Icons/Infopanels/open_window",
	turn_off_icon = "UI/Icons/Infopanels/close_window",
	turn_on_description = T(626746535261, --[[ModItemBuildingCompositeDef GalacticLaserGate turn_on_description]] "Task survivors to close this gate."),
	turn_off_description = T(384528129837, --[[ModItemBuildingCompositeDef GalacticLaserGate turn_off_description]] "Task survivors to open this gate."),
	invert_working_state = true,
	attack_attraction = 0,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	PowerComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 1000,
	PowerSkipsStateChange = true,
	HasSmartConnection = true,
	CableClass = "EM",
}


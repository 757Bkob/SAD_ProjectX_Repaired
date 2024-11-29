UndefineClass('AdvancedCarbonGate')
DefineClass.AdvancedCarbonGate = {
	__parents = { "FortGate" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "FortGate",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "TradeFortifications",
		}),
	},
	BuildMenuCategory = "sub_GalacticFortificationsGatesPX",
	display_name = T(252716248444, --[[ModItemBuildingCompositeDef AdvancedCarbonGate display_name]] "Advanced Carbon Gate"),
	description = T(197342172028, --[[ModItemBuildingCompositeDef AdvancedCarbonGate description]] "Provides unrestricted access if kept open. People can pass through closed gates and lead animals through them."),
	menu_display_name = T(461086141016, --[[ModItemBuildingCompositeDef AdvancedCarbonGate menu_display_name]] "Advanced Carbon Gate"),
	BuildMenuIcon = "Trade/AdvCarbonGate.png",
	BuildMenuPos = 30,
	display_name_pl = T(299948364797, --[[ModItemBuildingCompositeDef AdvancedCarbonGate display_name_pl]] "Advanced Carbon Gates"),
	display_name_short = T(516755402278, --[[ModItemBuildingCompositeDef AdvancedCarbonGate display_name_short]] "Advanced Carbon Gates"),
	entity = "Fort_Carbon_Gate",
	labels = {
		"Structures",
	},
	is_building = false,
	can_turn_off = true,
	turn_on_text = T(896956995725, --[[ModItemBuildingCompositeDef AdvancedCarbonGate turn_on_text |gender-variants]] "Open"),
	turn_off_text = T(458633464802, --[[ModItemBuildingCompositeDef AdvancedCarbonGate turn_off_text |gender-variants]] "Close"),
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 50000,
	}),
	construction_points = 24500,
	Health = 2000000,
	MaxHealth = 2000000,
	damage_reduction = {
		blunt = 30,
		energy = 30,
		gas = 30,
		pacify = 30,
		piercing = 30,
	},
	use_upgrade_dummy = false,
	RoomPlacement = "outdoors",
	lock_block_box = box(0, -1800, 0, 0, 1800, 2100),
	lock_pass_box = box(-600, -1800, 0, 1800, 1800, 2100),
	IgnoredObstacles = {
		"FortificationColumnElement",
	},
	MinConstructionSkill = 5,
	can_be_moved = false,
	fx_actor_base_class = "FortificationGate",
	apply_res_reqs = false,
	access_range = 1200,
	CustomMaterial = "Plastic",
	turning_on_text = T(915111261771, --[[ModItemBuildingCompositeDef AdvancedCarbonGate turning_on_text]] "Waiting to be opened"),
	turning_off_text = T(588977234906, --[[ModItemBuildingCompositeDef AdvancedCarbonGate turning_off_text]] "Waiting to be closed"),
	has_turned_off_warning = false,
	turn_on_icon = "UI/Icons/Infopanels/close_window",
	turn_off_icon = "UI/Icons/Infopanels/open_window",
	turn_on_description = T(502295027659, --[[ModItemBuildingCompositeDef AdvancedCarbonGate turn_on_description]] "Task survivors to open this gate."),
	turn_off_description = T(906634311350, --[[ModItemBuildingCompositeDef AdvancedCarbonGate turn_off_description]] "Task survivors to close this gate."),
	attack_attraction = 0,
	affected_by_disasters = set(),
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RangeOverlay = true,
	},
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
}

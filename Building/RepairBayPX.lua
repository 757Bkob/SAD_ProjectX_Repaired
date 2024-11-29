UndefineClass('RepairBayPX')
DefineClass.RepairBayPX = {
	__parents = { "Building", "PowerComponent", "ProductionDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "RepairBayPX",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	SingleItemPerStack = true,
	ClosedStorage = true,
	StorageDemandPriority = 4,
	BuildMenuCategory = "sub_TerminalsPX",
	display_name = T(444329092158, --[[ModItemBuildingCompositeDef RepairBayPX display_name]] "Repair Bay"),
	description = T(300300263210, --[[ModItemBuildingCompositeDef RepairBayPX description]] "Use this repair bay to repair worn down clothing, weaponry and armor."),
	menu_display_name = T(119846140891, --[[ModItemBuildingCompositeDef RepairBayPX menu_display_name]] "Repair Bay"),
	BuildMenuIcon = "General/RepairBayPX.png",
	BuildMenuPos = 70,
	display_name_pl = T(413117232652, --[[ModItemBuildingCompositeDef RepairBayPX display_name_pl]] "Repair Bay"),
	display_name_short = T(632652012102, --[[ModItemBuildingCompositeDef RepairBayPX display_name_short]] "Repair Bay"),
	entity = "PXRepairBayCNS",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		Metal = 30000,
		ScrapElectronics = 10000,
	}),
	construction_points = 20000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
		ScrapElectronics = 4000,
	}),
	Health = 400000,
	MaxHealth = 400000,
	lock_block_box = box(-600, -1500, 0, 600, 1800, 1750),
	apply_res_reqs = false,
	access_range = 2400,
	CustomMaterial = "Metal-Construction",
	attack_attraction = 5,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	PowerComponent = true,
	ProductionDeviceComponent = true,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 20000,
	HasSmartConnection = true,
	interfaces = {
		"RepairPX",
	},
	override_material_during_production = false,
	ProductionDeviceSkipsStateChange = true,
	stack_count = 40,
	accepted_res = {
		"Weapons",
		"Apparel",
	},
}


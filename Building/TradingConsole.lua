UndefineClass('TradingConsole')
DefineClass.TradingConsole = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "PowerComponent", "ProductionDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "xr_g0_building",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	DisplayAmountsInInfobar = false,
	BuildMenuCategory = "sub_TerminalsPX",
	display_name = T(450928432948, --[[ModItemBuildingCompositeDef TradingConsole display_name]] "Trading Console"),
	description = T(754156180944, --[[ModItemBuildingCompositeDef TradingConsole description]] "Interact with the market, suppliers and contractors to receive additional materials and unique blueprints for devices or structures.\n\n<center><style red>Requires a electrical connection to use.</style>"),
	menu_display_name = T(771230204358, --[[ModItemBuildingCompositeDef TradingConsole menu_display_name]] "Trading Console"),
	menu_description = T(795823974581, --[[ModItemBuildingCompositeDef TradingConsole menu_description]] "Interact with the market, suppliers and contractors to receive additional materials and unique blueprints for devices or structures."),
	BuildMenuIcon = "CriminalActivity/HackingTerminal.png",
	BuildMenuPos = 8,
	display_name_pl = T(841348151604, --[[ModItemBuildingCompositeDef TradingConsole display_name_pl]] "Trading Console"),
	entity = "PXHackingCNS",
	labels = {
		"BerserkTargets",
		"SolarFlareShieldedTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 3000,
		Metal = 50000,
		PowerCell = 3000,
		ScrapElectronics = 7000,
	}),
	construction_points = 20000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
		ScrapElectronics = 4000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {}),
	Health = 400000,
	MaxHealth = 400000,
	can_be_copied = false,
	lock_block_box = box(-600, -300, 0, 600, 300, 1750),
	terrain_change = false,
	apply_res_reqs = false,
	access_range = 2400,
	max_count = 5,
	show_name_in_direct_order = false,
	attack_attraction = 20,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	ProductionDeviceComponent = true,
	LightRadius = 2000,
	MinTimeToMalfunction = 48000000,
	MaxTimeToMalfunction = 86400000,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
	IsPowerConsumer = true,
	PowerConsumption = 30000,
	HasSmartConnection = true,
	interfaces = {
		"Trading",
	},
	off_when_idle = true,
	override_material_during_production = false,
}

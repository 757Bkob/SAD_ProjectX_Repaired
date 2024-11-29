UndefineClass('PXEyeSculpture')
DefineClass.PXEyeSculpture = {
	__parents = { "Building", "DecorationComponent", "RelaxationDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	BuildMenuCategory = "sub_DecorPX",
	display_name = T(296358168983, --[[ModItemBuildingCompositeDef PXEyeSculpture display_name]] "Eye Sculpture"),
	description = T(962404670122, --[[ModItemBuildingCompositeDef PXEyeSculpture description]] "A sculpture of a glowing eye."),
	menu_display_name = T(517185047263, --[[ModItemBuildingCompositeDef PXEyeSculpture menu_display_name]] "Eye Sculpture"),
	BuildMenuIcon = "General/PXEyesculpture.png",
	BuildMenuPos = 60,
	display_name_pl = T(125904486047, --[[ModItemBuildingCompositeDef PXEyeSculpture display_name_pl]] "Eye Sculpture"),
	display_name_short = T(318306945300, --[[ModItemBuildingCompositeDef PXEyeSculpture display_name_short]] "Eye Sculpture"),
	entity = "PXEyeSculptures",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 60000,
	}),
	construction_points = 40000,
	Health = 300000,
	MaxHealth = 300000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-600, -1200, 0, 600, 1200, 1750),
	MaterialColorization = PlaceObj('ColorizationPropSet', nil),
	access_range = 2400,
	attack_attraction = 5,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	DecorationComponent = true,
	RelaxationDeviceComponent = true,
	ownership_class = "Chair",
}


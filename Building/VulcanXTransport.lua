UndefineClass('VulcanXTransport')
DefineClass.VulcanXTransport = {
	__parents = { "BalloonBuildingBase", "InvulnerableComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",

	flags = { efAttackable = false, gofDamageable = false, },

	__copy_group = "Science",
	object_class = "BalloonBuildingBase",
	LockState = "hidden",
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	BuildMenuCategory = "Science",
	display_name = T(109734553415, --[[ModItemBuildingCompositeDef VulcanXTransport display_name]] "Vulcan-X Dropship"),
	description = T(268798282113, --[[ModItemBuildingCompositeDef VulcanXTransport description]] "Transports new crew members into the colony."),
	menu_display_name = T(137637684489, --[[ModItemBuildingCompositeDef VulcanXTransport menu_display_name]] "Vulcan-X"),
	menu_description = T(450667395553, --[[ModItemBuildingCompositeDef VulcanXTransport menu_description]] "Transports new crew members into the colony."),
	BuildMenuIcon = "UI/Icons/Build Menu/hotair_balloon",
	BuildMenuPos = 20,
	display_name_pl = T(425473867537, --[[ModItemBuildingCompositeDef VulcanXTransport display_name_pl]] "Vulcan-X Dropship"),
	entity = "LandingPod_Military",
	construction_points = 200000,
	RoomPlacement = "outdoors",
	lock_block_box = box(-3600, -3600, 0, 3600, 3600, 0),
	lock_pass_box = box(-3000, -3000, 0, 3000, 3000, 35000),
	ConstructIgnore = set( "Flooring" ),
	affected_by_disasters = set(),
	CustomMaterial = "Canvas",
	require_surfaces = false,
	prefer_in_buildmenu = true,
	attack_attraction = 5,
	sort_priority = 1,
	fuel_consumed = "LiquidFuel",
	fuel_amount = 30000,
	InvulnerableComponent = true,
}

function OnMsg.ClassesPostprocess()
	rawset(VulcanXTransport, "construction_cost", PlaceObj('ConstructionCost', {
	FabricsAll = 50000,
	Metal = 10000,
	Sticks = 20000,
}))
	rawset(VulcanXTransport, "deconstruction_output", PlaceObj('ConstructionCost', {
	FabricsAll = 25000,
	ScrapMetal = 10000,
	Sticks = 10000,
}))
end


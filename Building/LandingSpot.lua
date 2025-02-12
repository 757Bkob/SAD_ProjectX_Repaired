UndefineClass('LandingSpot')
DefineClass.LandingSpot = {
	__parents = { "LandingSpotBuilding", "InvulnerableComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",

	flags = { efAttackable = false, gofDamageable = false, },

	object_class = "LandingSpotBuilding",
	BuildMenuCategory = "sub_RelayPX",
	display_name = T(141872542351, --[[ModItemBuildingCompositeDef LandingSpot display_name]] "Landing Pad"),
	description = T(589958651226, --[[ModItemBuildingCompositeDef LandingSpot description]] "A landing site for <color TextEmphasis>supply crates</color>."),
	menu_display_name = T(351158595633, --[[ModItemBuildingCompositeDef LandingSpot menu_display_name]] "Landing Spot"),
	BuildMenuIcon = "General/LandingPad.png",
	BuildMenuPos = 100,
	display_name_pl = T(688014067434, --[[ModItemBuildingCompositeDef LandingSpot display_name_pl]] "Landing Pad"),
	entity = "DecLandingSpot",
	is_building = false,
	ConstructColor = 4284769380,
	ConstructHasResourcesColor = 4284769380,
	construction_points = 20000,
	DestroyedEntity = "DecLandingSpot_Destruct",
	ConstructEntity = "DecLandingSpot_Construct",
	RoomPlacement = "outdoors",
	CanPlaceInShelter = false,
	lock_flags = 44,
	lock_block_box = box(-4200, -4200, 0, 4200, 4200, 0),
	lock_pass_box = box(-3600, -3600, 0, 3600, 3600, 35000),
	terrain_change = "soil",
	soil_form = "circle",
	ConstructIgnore = set( "Flooring" ),
	access_range = 2400,
	attack_attraction = 0,
	affected_by_disasters = set(),
	sort_priority = 1,
	InvulnerableComponent = true,
	can_change_ownership = false,
	ChangeOwnerIcon = "UI/Icons/Infopanels/assign_owner",
}


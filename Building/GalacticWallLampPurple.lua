UndefineClass('GalacticWallLampPurple')
DefineClass.GalacticWallLampPurple = {
	__parents = { "Building", "InvulnerableComponent", "LightingComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",

	flags = { efAttackable = false, gofDamageable = false, },

	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "GalacticPower",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	BuildMenuCategory = "sub_LightPurplePX",
	display_name = T(351614154821, --[[ModItemBuildingCompositeDef GalacticWallLampPurple display_name]] "Galactic Wall Light"),
	description = T(805159130825, --[[ModItemBuildingCompositeDef GalacticWallLampPurple description]] "Provides light while working. Requires a wall. Due to an advancement in technology these light fixtures drain less electricity and have practically zero chance of malfunctioning. Has light indicators, enhanced range and color options."),
	BuildMenuIcon = "Trade/GalaxyWallLightPurple.png",
	BuildMenuPos = 2000,
	display_name_pl = T(192061132710, --[[ModItemBuildingCompositeDef GalacticWallLampPurple display_name_pl]] "Galactic Wall Light"),
	display_name_short = T(805683654140, --[[ModItemBuildingCompositeDef GalacticWallLampPurple display_name_short]] "Galactic Wall Light"),
	entity = "WallLamp_Electric",
	update_interval = 5000,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 3000,
	}),
	construction_points = 4000,
	custom_constr_rules = {
		PlaceObj('ConstructionObjectSnapToWall', {
			'allow_switch_snap_side', true,
		}),
		PlaceObj('AlignToWallConstructionRule', nil),
	},
	deconstruction_output = PlaceObj('ConstructionCost', {
		ScrapMetal = 3000,
	}),
	attached_to_wall = true,
	lock_block_box = box(0, -300, 1400, 300, 300, 2100),
	lock_pass_box = box(300, -300, 1400, 600, 300, 2100),
	terrain_change = false,
	working_during_construction = true,
	MovingAnimHigh = true,
	MovingOffsetZ = -1600,
	apply_res_reqs = false,
	access_range = 1800,
	attack_attraction = 1,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	InvulnerableComponent = true,
	LightingComponent = true,
	PowerComponent = true,
	LightRadius = 8000,
	LightFov = 10800,
	LightDirection = point(4096, 0, 0),
	LightShowArea = true,
	IlluminateObjects = function (self)
		if self.active then self:IlluminateObjectsInRadius() end
	end,
	IsPowerConsumer = true,
	PowerConsumption = 300,
	HasSmartConnection = true,
}

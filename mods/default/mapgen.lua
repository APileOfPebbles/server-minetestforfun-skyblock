--
-- Aliases for map generator outputs
--

minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_dirt", "default:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "default:dirt_with_grass")
minetest.register_alias("mapgen_sand", "default:sand")
minetest.register_alias("mapgen_water_source", "default:water_source")
minetest.register_alias("mapgen_river_water_source", "default:river_water_source")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_gravel", "default:gravel")
minetest.register_alias("mapgen_desert_stone", "default:desert_stone")
minetest.register_alias("mapgen_desert_sand", "default:desert_sand")
minetest.register_alias("mapgen_dirt_with_snow", "default:dirt_with_snow")
minetest.register_alias("mapgen_snowblock", "default:snowblock")
minetest.register_alias("mapgen_snow", "default:snow")
minetest.register_alias("mapgen_ice", "default:ice")
minetest.register_alias("mapgen_sandstone", "default:sandstone")

-- Flora

minetest.register_alias("mapgen_tree", "default:tree")
minetest.register_alias("mapgen_leaves", "default:leaves")
minetest.register_alias("mapgen_apple", "default:apple")
minetest.register_alias("mapgen_jungletree", "default:jungletree")
minetest.register_alias("mapgen_jungleleaves", "default:jungleleaves")
minetest.register_alias("mapgen_junglegrass", "default:junglegrass")
minetest.register_alias("mapgen_pine_tree", "default:pine_tree")
minetest.register_alias("mapgen_pine_needles", "default:pine_needles")

-- Dungeons

minetest.register_alias("mapgen_cobble", "default:cobble")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_mossycobble", "default:mossycobble")
minetest.register_alias("mapgen_sandstonebrick", "default:sandstonebrick")
minetest.register_alias("mapgen_stair_sandstonebrick", "stairs:stair_sandstonebrick")


--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

function default.register_ores()

	-- Clay

	minetest.register_ore({ 
		ore_type        = "blob",
		ore             = "default:clay",
		wherein         = {"default:sand"},
		clust_scarcity  = 24 * 24 * 24,
		clust_size      = 7,
		y_min           = -15,
		y_max           = 0,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Sand

	minetest.register_ore({ 
		ore_type        = "blob",
		ore             = "default:sand",
		wherein         = {"default:stone", "default:sandstone",
			"default:desert_stone"},
		clust_scarcity  = 24 * 24 * 24,
		clust_size      = 7,
		y_min           = -63,
		y_max           = 4,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Dirt

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:dirt",
		wherein         = {"default:stone", "default:sandstone"},
		clust_scarcity  = 24 * 24 * 24,
		clust_size      = 7,
		y_min           = -63,
		y_max           = 31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Gravel

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:gravel",
		wherein         = {"default:stone"},
		clust_scarcity  = 24 * 24 * 24,
		clust_size      = 7,
		y_min           = -31000,
		y_max           = 31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Coal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coal",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 8,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = 64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:desert_stone_with_coal",
		wherein        = "default:desert_stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 10,
		clust_size     = 3,
		y_min          = 0,
		y_max          = 64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coal",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_min          = -30000,
		y_max          = 0,
		flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coal",
		wherein        = "default:stone",
		clust_scarcity = 32 * 32 * 32,
		clust_num_ores = 40,
		clust_size     = 4,
		y_max          = 64,
		y_min          = -30000,
	})

	-- Iron

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -15,
		y_max          = 2,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -63,
		y_max          = -16,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_min          = -30000,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 48 * 48 * 48,
		clust_num_ores = 40,
		clust_size     = 4,
		y_max          = 64,
		y_min          = -30000,
	})

	-- Mese

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_mese",
		wherein        = "default:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -255,
		y_max          = -128,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_mese",
		wherein        = "default:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -1024,
		y_max          = -256,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:mese",
		wherein        = "default:stone",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -30000,
		y_max          = -1024,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:mese",
		wherein        = "default:stone",
		clust_scarcity = 40 * 40 * 40,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -1024,
		y_max          = 64,
		flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:mese",
		wherein        = "default:desert_stone",
		clust_scarcity = 40 * 40 * 40,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -1024,
		y_max          = 64,
		flags          = "absheight",
	})

	-- Beware of Meze

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:meze",
		wherein        = "default:stone",
		clust_scarcity = 40 * 40 * 40,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = 0,
		y_max          = 64,
		flags          = "absheight",
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:meze",
		wherein        = "default:desert_stone",
		clust_scarcity = 40 * 40 * 40,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = 0,
		y_max          = 64,
		flags          = "absheight",
	})


	-- Gold

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_gold",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -255,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_gold",
		wherein        = "default:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -256,
	})

	-- Diamond

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_diamond",
		wherein        = "default:stone",
		clust_scarcity = 17 * 17 * 17,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -512,
		y_max          = -256,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_diamond",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -512,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_diamond",
		wherein        = "default:stone",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 32,
		clust_size     = 5,
		y_max          = -4096,
		y_min          = -30000,
	})

	-- Copper

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_copper",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -63,
		y_max          = -16,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:desert_stone_with_copper",
		wherein        = "default:desert_stone",
		clust_scarcity = 11 * 11 * 11,
		clust_num_ores = 6,
		clust_size     = 3,
		y_min          = 0,
		y_max          = 64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_copper",
		wherein        = "default:stone",
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -30000,
		y_max          = -64,
	})

	-- Gold Coins

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coin",
		wherein        = "default:stone",
		clust_scarcity = 26 * 26 * 26,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -30000,
		y_max          = 0,
		flags          = "absheight",
	})

	-- Super Apples

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "maptools:superapple",
		wherein        = "default:apple",
		clust_scarcity = 6 * 6 * 6,
		clust_num_ores = 5,
		clust_size     = 2,
		y_min          = 0,
		y_max          = 64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "maptools:superapple",
		wherein        = "default:jungleleaves",
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 5,
		clust_size     = 2,
		y_min          = 0,
		y_max          = 64,
	})

	-- Underground springs:

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:water_source",
		ore_param2     = 128,
		wherein        = "default:stone",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 10,
		clust_size     = 4,
		y_min          = -10000,
		y_max          = -10,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:lava_source",
		ore_param2     = 128,
		wherein        = "default:stone",
		clust_scarcity = 32 * 32 * 32,
		clust_num_ores = 5,
		clust_size     = 2,
		y_min          = -30000,
		y_max          = -100,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:dirt",
		wherein        = "default:stone",
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 64,
		clust_size     = 5,
		y_max          = 64,
		y_min          = -4096,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:gravel",
		wherein        = "default:stone",
		clust_scarcity = 16 * 16 * 16,
		clust_num_ores = 64,
		clust_size     = 5,
		y_max          = 64,
		y_min          = -30000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:sand",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 32,
		clust_size     = 4,
		y_max          = 64,
		y_min          = -1024,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:clay",
		wherein        = "default:stone",
		clust_scarcity = 32 * 32 * 32,
		clust_num_ores = 32,
		clust_size     = 4,
		y_max          = 64,
		y_min          = -1024,
	})


	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:cobble",
		wherein        = "default:stone",
		clust_scarcity = 40 * 40 * 40,
		clust_num_ores = 512,
		clust_size     = 9,
		y_max          = 64,
		y_min          = -4096,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:desert_cobble",
		wherein        = "default:desert_stone",
		clust_scarcity = 40 * 40 * 40,
		clust_num_ores = 512,
		clust_size     = 9,
		y_max          = 64,
		y_min          = 0,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:clay",
		wherein        = "default:sand",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 64,
		clust_size     = 5,
		y_max          = 4,
		y_min          = -8,
	})

	-- Air rooms in dirt:

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "air",
		wherein        = "default:dirt",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 200,
		clust_size     = 7,
		y_min          = -30000,
		y_max          = 64,
	})

	-- Acid lakes in gravel:

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:acid_source",
		wherein        = "default:gravel",
		clust_scarcity = 26 * 26 * 26,
		clust_num_ores = 64,
		clust_size     = 5,
		y_min          = -30000,
		y_max          = 64,
	})
end


--
-- Register biomes
--

-- All mapgens except mgv6 and singlenode

function default.register_biomes()
	minetest.clear_registered_biomes()

	-- Permanent ice

	minetest.register_biome({
		name = "glacier",
		node_dust = "default:snowblock",
		node_top = "default:snowblock",
		depth_top = 1,
		node_filler = "default:snowblock",
		depth_filler = 3,
		node_stone = "default:ice",
		node_water_top = "default:ice",
		depth_water_top = 10,
		--node_water = "",
		node_river_water = "default:ice",
		y_min = -8,
		y_max = 31000,
		heat_point = 0,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "glacier_ocean",
		node_dust = "default:snowblock",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -9,
		heat_point = 0,
		humidity_point = 50,
	})

	-- Cold

	minetest.register_biome({
		name = "tundra",
		--node_dust = "",
		node_top = "default:dirt_with_snow",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 2,
		y_max = 31000,
		heat_point = 15,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "tundra_beach",
		--node_dust = "",
		node_top = "default:gravel",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -3,
		y_max = 1,
		heat_point = 15,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "tundra_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -4,
		heat_point = 15,
		humidity_point = 35,
	})


	minetest.register_biome({
		name = "taiga",
		node_dust = "default:snow",
		node_top = "default:dirt_with_snow",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 2,
		y_max = 31000,
		heat_point = 15,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "taiga_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 1,
		heat_point = 15,
		humidity_point = 65,
	})

	-- Temperate

	minetest.register_biome({
		name = "stone_grassland",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 6,
		y_max = 31000,
		heat_point = 40,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "stone_grassland_dunes",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 5,
		heat_point = 40,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "stone_grassland_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 40,
		humidity_point = 35,
	})


	minetest.register_biome({
		name = "coniferous_forest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 6,
		y_max = 31000,
		heat_point = 40,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "coniferous_forest_dunes",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 5,
		heat_point = 40,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "coniferous_forest_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 40,
		humidity_point = 65,
	})


	minetest.register_biome({
		name = "sandstone_grassland",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 6,
		y_max = 31000,
		heat_point = 60,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "sandstone_grassland_dunes",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 2,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 5,
		heat_point = 60,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "sandstone_grassland_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 60,
		humidity_point = 35,
	})


	minetest.register_biome({
		name = "deciduous_forest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 60,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "deciduous_forest_swamp",
		--node_dust = "",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -3,
		y_max = 0,
		heat_point = 60,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "deciduous_forest_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -4,
		heat_point = 60,
		humidity_point = 65,
	})

	-- Hot

	minetest.register_biome({
		name = "desert",
		--node_dust = "",
		node_top = "default:desert_sand",
		depth_top = 1,
		node_filler = "default:desert_sand",
		depth_filler = 1,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 31000,
		heat_point = 85,
		humidity_point = 20,
	})

	minetest.register_biome({
		name = "desert_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 85,
		humidity_point = 20,
	})


	minetest.register_biome({
		name = "savanna",
		--node_dust = "",
		node_top = "default:dirt_with_dry_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 85,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "savanna_swamp",
		--node_dust = "",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -3,
		y_max = 0,
		heat_point = 85,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "savanna_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -4,
		heat_point = 85,
		humidity_point = 50,
	})


	minetest.register_biome({
		name = "rainforest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 85,
		humidity_point = 80,
	})

	minetest.register_biome({
		name = "rainforest_swamp",
		--node_dust = "",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -3,
		y_max = 0,
		heat_point = 85,
		humidity_point = 80,
	})

	minetest.register_biome({
		name = "rainforest_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -4,
		heat_point = 85,
		humidity_point = 80,
	})

	-- Underground

	minetest.register_biome({
		name = "underground",
		--node_dust = "",
		--node_top = "",
		--depth_top = ,
		--node_filler = "",
		--depth_filler = ,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -31000,
		y_max = -113,
		heat_point = 50,
		humidity_point = 50,
	})
end


--
-- Register decorations
--

-- Mgv6

function default.register_mgv6_decorations()
	minetest.clear_registered_decorations()

	-- Papyrus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y = 100, z = 100},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		y_min = 1,
		y_max = 1,
		decoration = "default:papyrus",
		height = 2,
		height_max = 4,
		spawn_by = "default:water_source",
		num_spawn_by = 1,
	})

	-- Cacti

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.012,
			scale = 0.024,
			spread = {x = 100, y = 100, z = 100},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "default:cactus",
		height = 3,
	        height_max = 4,
	})

	-- Long grasses

	for length = 1, 5 do
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt_with_grass"},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.007,
				spread = {x = 100, y = 100, z = 100},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			y_min = 1,
			y_max = 30,
			decoration = "default:grass_"..length,
		})
	end

	-- Dry shrubs

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand", "default:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.035,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "default:dry_shrub",
	})
end

-- All mapgens except mgv6 and singlenode

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass", "default:sand"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"stone_grassland", "sandstone_grassland",
			"deciduous_forest", "coniferous_forest",
			"stone_grassland_dunes", "sandstone_grassland_dunes",
			"coniferous_forest_dunes"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:grass_"..length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:dry_grass_"..length,
	})
end

function default.register_decorations()
	minetest.clear_registered_decorations()

	-- Apple tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.036,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0018,
			scale = 0.0011,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = {
			size = {x = 3, y = 3, z = 1},
			data = {
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "default:tree", param2 = 12, prob = 191},
				{name = "default:tree", param2 = 12},
				{name = "default:tree", param2 = 12, prob = 127},
				{name = "air", prob = 0},
				{name = "flowers:mushroom_brown", prob = 63},
				{name = "air", prob = 0},
			},
		},
		flags = "place_center_x",
		rotation = "random",
	})

	-- Jungle tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "default:dirt"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest", "rainforest_swamp"},
		y_min = 0,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass", "default:dirt"},
		sidelen = 80,
		fill_ratio = 0.005,
		biomes = {"rainforest", "rainforest_swamp"},
		y_min = 1,
		y_max = 31000,
		schematic = {
			size = {x = 3, y = 3, z = 1},
			data = {
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "default:jungletree", param2 = 12, prob = 191},
				{name = "default:jungletree", param2 = 12},
				{name = "default:jungletree", param2 = 12, prob = 127},
				{name = "air", prob = 0},
				{name = "flowers:mushroom_brown", prob = 127},
				{name = "air", prob = 0},
			},
		},
		flags = "place_center_x",
		rotation = "random",
	})

	-- Taiga and temperate coniferous forest pine tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.036,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest"},
		y_min = 2,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_snow", "default:dirt_with_grass"},
		sidelen = 80,
		noise_params = {
			offset = 0.0018,
			scale = 0.0011,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = {
			size = {x = 3, y = 3, z = 1},
			data = {
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "default:pine_tree", param2 = 12, prob = 191},
				{name = "default:pine_tree", param2 = 12},
				{name = "default:pine_tree", param2 = 12, prob = 127},
				{name = "air", prob = 0},
				{name = "flowers:mushroom_red", prob = 63},
				{name = "air", prob = 0},
			},
		},
		flags = "place_center_x",
		rotation = "random",
	})

	-- Acacia tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/acacia_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 31000,
		schematic = {
			size = {x = 3, y = 2, z = 1},
			data = {
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "default:acacia_tree", param2 = 12, prob = 191},
				{name = "default:acacia_tree", param2 = 12},
				{name = "default:acacia_tree", param2 = 12, prob = 127},
			},
		},
		flags = "place_center_x",
		rotation = "random",
	})

	-- Aspen tree and log

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.015,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/aspen_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0,
			scale = -0.0008,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = {
			size = {x = 3, y = 3, z = 1},
			data = {
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "air", prob = 0},
				{name = "default:aspen_tree", param2 = 12},
				{name = "default:aspen_tree", param2 = 12},
				{name = "default:aspen_tree", param2 = 12, prob = 127},
				{name = "flowers:mushroom_red", prob = 63},
				{name = "flowers:mushroom_brown", prob = 63},
				{name = "air", prob = 0},
			},
		},
		flags = "place_center_x",
		rotation = "random",
	})
	-- Large cactus

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		schematic = minetest.get_modpath("default").."/schematics/large_cactus.mts",
		flags = "place_center_x",
		rotation = "random",
	})

	-- Cactus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		decoration = "default:cactus",
		height = 2,
		height_max = 5,
	})

	-- Papyrus

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 200, y = 200, z = 200},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"savanna_swamp"},
		y_min = 0,
		y_max = 0,
		schematic = minetest.get_modpath("default").."/schematics/papyrus.mts",
	})

	-- Grasses

	register_grass_decoration(-0.03,  0.09,  5)
	register_grass_decoration(-0.015, 0.075, 4)
	register_grass_decoration(0,      0.06,  3)
	register_grass_decoration(0.015,  0.045, 2)
	register_grass_decoration(0.03,   0.03,  1)

	-- Dry grasses

	register_dry_grass_decoration(0.01, 0.05,  5)
	register_dry_grass_decoration(0.03, 0.03,  4)
	register_dry_grass_decoration(0.05, 0.01,  3)
	register_dry_grass_decoration(0.07, -0.01, 2)
	register_dry_grass_decoration(0.09, -0.03, 1)

	-- Junglegrass

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:junglegrass",
	})

	-- Dry shrub

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand", "default:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra"},
		y_min = 2,
		y_max = 31000,
		decoration = "default:dry_shrub",
	})
end


--
-- Generate nyan cats
--

-- All mapgens except singlenode

function default.make_nyancat(pos, facedir, length)
	local tailvec = {x = 0, y = 0, z = 0}
	if facedir == 0 then
		tailvec.z = 1
	elseif facedir == 1 then
		tailvec.x = 1
	elseif facedir == 2 then
		tailvec.z = -1
	elseif facedir == 3 then
		tailvec.x = -1
	else
		facedir = 0
		tailvec.z = 1
	end
	local p = {x = pos.x, y = pos.y, z = pos.z}
	minetest.set_node(p, {name = "default:nyancat", param2 = facedir})
	for i = 1, length do
		p.x = p.x + tailvec.x
		p.z = p.z + tailvec.z
		minetest.set_node(p, {name = "default:nyancat_rainbow", param2 = facedir})
	end
end

function default.generate_nyancats(minp, maxp, seed)
	local height_min = -19600
	local height_max = 30000
	if maxp.y < height_min or minp.y > height_max then
		return
	end
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	local volume = (maxp.x - minp.x + 1) * (y_max - y_min + 1) * (maxp.z - minp.z + 1)
	local pr = PseudoRandom(seed + 9324342)
	local max_num_nyancats = math.floor(volume / (16 * 16 * 16))
	for i = 1, max_num_nyancats do
		if pr:next(0, 1000) == 0 then
			local x0 = pr:next(minp.x, maxp.x)
			local y0 = pr:next(minp.y, maxp.y)
			local z0 = pr:next(minp.z, maxp.z)
			local p0 = {x = x0, y = y0, z = z0}
			default.make_nyancat(p0, pr:next(0, 3), pr:next(3, 15))
		end
	end
end


--
-- Detect mapgen to select functions
--

-- Mods using singlenode mapgen can call these functions to enable
-- the use of minetest.generate_ores or minetest.generate_decorations

local mg_params = minetest.get_mapgen_params()
if mg_params.mgname == "v6" then
	default.register_ores()
	default.register_mgv6_decorations()
	minetest.register_on_generated(default.generate_nyancats)
elseif mg_params.mgname ~= "singlenode" then
	default.register_biomes()
	default.register_ores()
	default.register_decorations()
	minetest.register_on_generated(default.generate_nyancats)
end

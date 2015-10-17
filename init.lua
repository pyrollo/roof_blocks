roof_blocks = {}

minetest.register_node("roof_blocks:roofclay", {
	description = "Clay tiles roof",
	tiles = {"roof_blocks_clay.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("roof_blocks:roofslates", {
	description = "Slates roof",
	tiles = {"roof_blocks_slate.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("roof_blocks:roofsteel", {
	description = "Steel sheets roof",
	tiles = {"roof_blocks_steel.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("roof_blocks:roofwood", {
	description = "Wooden tiles roof",
	tiles = {"roof_blocks_wood.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_craft({
	output = 'roof_blocks:roofclay 2',
	recipe = {
		{'default:clay_brick', 'default:clay_brick', ''},
		{'default:stick', 'default:stick', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'roof_blocks:roofslates 2',
	recipe = {
		{'default:stone', 'default:stone', ''},
		{'default:stick', 'default:stick', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'roof_blocks:roofsteel 2',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', ''},
		{'default:stick', 'default:stick', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'roof_blocks:roofwood 2',
	recipe = {
		{'default:wood', 'default:wood', ''},
		{'default:stick', 'default:stick', ''},
		{'', '', ''},
	}
})

if stairsplus then
	print ('[roof_blocks] Stairplus!')
	function roof_blocks.register_stairsplus(node) 
		local ndef = minetest.registered_nodes['roof_blocks:'..node]
		if ndef then
			stairsplus:register_all("roof_blocks", node, 'roof_blocks:'..node, {
				description = ndef.description,
				drop = ndef.drop,
				groups = ndef.groups,
				sounds = ndef.sounds,
				tiles = ndef.tiles,
				sunlight_propagates = false
			})
		end
	end

	roof_blocks.register_stairsplus('roofclay')
	roof_blocks.register_stairsplus('roofslates')
	roof_blocks.register_stairsplus('roofsteel')
	roof_blocks.register_stairsplus('roofwood')
end


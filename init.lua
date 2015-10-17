roofblocks = {}

minetest.register_node("roofblocks:roofclay", {
	description = "Clay tiles roof",
	tiles = {"roofblocks_clay.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("roofblocks:roofslates", {
	description = "Slates roof",
	tiles = {"roofblocks_slate.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("roofblocks:roofsteel", {
	description = "Steel sheets roof",
	tiles = {"roofblocks_steel.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_node("roofblocks:roofwood", {
	description = "Wooden tiles roof",
	tiles = {"roofblocks_wood.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_craft({
	output = 'roofblocks:roofclay 2',
	recipe = {
		{'default:clay_brick', 'default:clay_brick', ''},
		{'default:stick', 'default:stick', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'roofblocks:roofslates 2',
	recipe = {
		{'default:stone', 'default:stone', ''},
		{'default:stick', 'default:stick', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'roofblocks:roofsteel 2',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', ''},
		{'default:stick', 'default:stick', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'roofblocks:roofwood 2',
	recipe = {
		{'default:wood', 'default:wood', ''},
		{'default:stick', 'default:stick', ''},
		{'', '', ''},
	}
})

if stairsplus then
	print ('[roofblocks] Stairplus!')
	function roofblocks.register_stairsplus(node) 
		local ndef = minetest.registered_nodes['roofblocks:'..node]
		if ndef then
			stairsplus:register_all("roofblocks", node, 'roofblocks:'..node, {
				description = ndef.description,
				drop = ndef.drop,
				groups = ndef.groups,
				sounds = ndef.sounds,
				tiles = ndef.tiles,
				sunlight_propagates = false
			})
		end
	end

	roofblocks.register_stairsplus('roofclay')
	roofblocks.register_stairsplus('roofslates')
	roofblocks.register_stairsplus('roofsteel')
	roofblocks.register_stairsplus('roofwood')
end


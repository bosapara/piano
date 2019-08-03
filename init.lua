local w_note = "white_button.png"
local w_pressed = "white_button_pressed.png"
local b_note = "black_button.png"
local b_pressed = "black_button_pressed.png"

local form = "size[23.2,9] bgcolor[#08080866;true] box[-0.3,-0.2;23.6,7.8;#000000cc] image_button[0,0.1;1.2,7;"..w_note..";c3;;false;false;"..w_pressed.."] image_button[1.1,0.1;1.2,7;"..w_note..";d3;;false;false;"..w_pressed.."] image_button[2.2,0.1;1.2,7;"..w_note..";e3;;false;false;"..w_pressed.."] image_button[3.3,0.1;1.2,7;"..w_note..";f3;;false;false;"..w_pressed.."] image_button[4.4,0.1;1.2,7;"..w_note..";g3;;false;false;"..w_pressed.."] image_button[5.5,0.1;1.2,7;"..w_note..";a3;;false;false;"..w_pressed.."] image_button[6.6,0.1;1.2,7;"..w_note..";b3;;false;false;"..w_pressed.."] image_button[7.7,0.1;1.2,7;"..w_note..";c1;;false;false;"..w_pressed.."] image_button[8.8,0.1;1.2,7;"..w_note..";d1;;false;false;"..w_pressed.."] image_button[9.9,0.1;1.2,7;"..w_note..";e1;;false;false;"..w_pressed.."] image_button[11,0.1;1.2,7;"..w_note..";f1;;false;false;"..w_pressed.."] image_button[12.1,0.1;1.2,7;"..w_note..";g1;;false;false;"..w_pressed.."] image_button[13.2,0.1;1.2,7;"..w_note..";a1;;false;false;"..w_pressed.."] image_button[14.3,0.1;1.2,7;"..w_note..";b1;;false;false;"..w_pressed.."] image_button[15.4,0.1;1.2,7;"..w_note..";c2;;false;false;"..w_pressed.."] image_button[16.5,0.1;1.2,7;"..w_note..";d2;;false;false;"..w_pressed.."] image_button[17.6,0.1;1.2,7;"..w_note..";e2;;false;false;"..w_pressed.."] image_button[18.7,0.1;1.2,7;"..w_note..";f2;;false;false;"..w_pressed.."] image_button[19.8,0.1;1.2,7;"..w_note..";g2;;false;false;"..w_pressed.."] image_button[20.9,0.1;1.2,7;"..w_note..";a2;;false;false;"..w_pressed.."] image_button[22,0.1;1.2,7;"..w_note..";b2;;false;false;"..w_pressed.."] image_button[0.6,0.1;1,4.5;"..b_note..";c3_sharp;;false;false;"..b_pressed.."]  image_button[1.75,0.1;1,4.5;"..b_note..";d3_sharp;;false;false;"..b_pressed.."] image_button[3.9,0.1;1,4.5;"..b_note..";f3_sharp;;false;false;"..b_pressed.."] image_button[5.05,0.1;1,4.5;"..b_note..";g3_sharp;;false;false;"..b_pressed.."] image_button[6.15,0.1;1,4.5;"..b_note..";a3_sharp;;false;false;"..b_pressed.."] image_button[8.3,0.1;1,4.5;"..b_note..";c1_sharp;;false;false;"..b_pressed.."] image_button[9.45,0.1;1,4.5;"..b_note..";d1_sharp;;false;false;"..b_pressed.."] image_button[11.6,0.1;1,4.5;"..b_note..";f1_sharp;;false;false;"..b_pressed.."] image_button[12.75,0.1;1,4.5;"..b_note..";g1_sharp;;false;false;"..b_pressed.."] image_button[13.85,0.1;1,4.5;"..b_note..";a1_sharp;;false;false;"..b_pressed.."] image_button[15.95,0.1;1,4.5;"..b_note..";c2_sharp;;false;false;"..b_pressed.."] image_button[17.15,0.1;1,4.5;"..b_note..";d2_sharp;;false;false;"..b_pressed.."] image_button[19.3,0.1;1,4.5;"..b_note..";f2_sharp;;false;false;"..b_pressed.."] image_button[20.4,0.1;1,4.5;"..b_note..";g2_sharp;;false;false;"..b_pressed.."] image_button[21.5,0.1;1,4.5;"..b_note..";a2_sharp;;false;false;"..b_pressed.."]"

minetest.register_chatcommand("piano", {
	params = "",
	description = "Piano keyboard",
	privs = {basic_privs=true},
	func = function(name, param)

		minetest.show_formspec(name, "piano_keyboard", form)
	
	end,
})


minetest.register_tool("piano:tool", {
	description = "Piano Keyboard",
	inventory_image = "piano_tool.png",
	range = 0,
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)

		local name = user:get_player_name()
	
		minetest.show_formspec(name, "piano_keyboard", form)
		
	end,

})



piano = {}

piano.color_list = {
		'#26231f:150',
		'#284965:150',
		'#65493f:150',
		'#3a8d94:150',
		'#485831:150',
		'#464342:150',
		'#739251:150',
		'#85817e:150',
		'#b74679:150',
		'#bb6c3e:150',
		'#a2655f:150',
		'#893734:150',
		'#5e3170:150',
		'#bcb2a6:150',
		'#c0a342:150',
		}

local function particle_effect(pos)

		local rand = piano.color_list[math.random( #piano.color_list )]

		minetest.add_particlespawner( --I actually borrowed this code from the nether mod
			1, --amount
			0.01, --time
			{x=pos.x, y=pos.y+1.75, z=pos.z}, --minpos
			{x=pos.x, y=pos.y+1.75, z=pos.z}, --maxpos
			{x=0, y=0.65, z=0}, --minvel
			{x=0, y=0.65, z=0}, --maxvel
			{x=0,y=0,z=0}, --minacc
			{x=0,y=0,z=0}, --maxacc
			0.9, --minexptime
			0.9, --maxexptime
			3.5, --minsize
			3.5, --maxsize
			false, --collisiondetection
			"notepart.png^(notepart.png^[colorize:"..rand..")"
		)
end





local v = {
	{"c3", "noteblock_c3"},
	{"d3", "noteblock_d3"},
	{"e3", "noteblock_e3"},
	{"f3", "noteblock_f3"},
	{"g3", "noteblock_g3"},
	{"a3", "noteblock_a3"},
	{"b3", "noteblock_b3"},
	{"c1", "noteblock_c"},
	{"d1", "noteblock_d"},
	{"e1", "noteblock_e"},
	{"f1", "noteblock_f"},
	{"g1", "noteblock_g"},
	{"a1", "noteblock_a"},
	{"b1", "noteblock_b"},
	{"c2", "noteblock_c2"},
	{"d2", "noteblock_d2"},
	{"e2", "noteblock_e2"},
	{"f2", "noteblock_f2"},
	{"g2", "noteblock_g2"},
	{"a2", "noteblock_a2"},
	{"b2", "noteblock_b2"},
	{"c3_sharp", "noteblock_csharp3"},
	{"d3_sharp", "noteblock_dsharp3"},
	{"f3_sharp", "noteblock_fsharp3"},
	{"g3_sharp", "noteblock_gsharp3"},
	{"a3_sharp", "noteblock_asharp3"},
	{"c2_sharp", "noteblock_csharp2"},
	{"d2_sharp", "noteblock_dsharp2"},
	{"f2_sharp", "noteblock_fsharp2"},
	{"g2_sharp", "noteblock_gsharp2"},
	{"a2_sharp", "noteblock_asharp2"},
	{"c1_sharp", "noteblock_csharp"},
	{"d1_sharp", "noteblock_dsharp"},
	{"f1_sharp", "noteblock_fsharp"},
	{"g1_sharp", "noteblock_gsharp"},
	{"a1_sharp", "noteblock_asharp"},
			
}

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname=="piano_keyboard" then

		
		local pos = player:get_pos()
		
		for _, v in pairs(v) do

				if fields[v[1]] then
					minetest.sound_play(v[2], {pos = pos, max_hear_distance = 10, gain = 1.0,})
					particle_effect(pos)
				end	
		end

	end
end)



minetest.register_craft({
	output = 'piano:tool',
	recipe = {
		{'group:wood', 'default:gold_ingot', 'group:wood'},
		{'group:wood', 'default:gold_ingot', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})
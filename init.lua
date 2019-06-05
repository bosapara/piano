minetest.register_chatcommand("piano", {
	params = "",
	description = "Piano keyboard",
	privs = {basic_privs=true},
	func = function(name, param)

	local w_note = "white_button.png"
	local w_pressed = "white_button_pressed.png"
	local b_note = "black_button.png"
	local b_pressed = "black_button_pressed.png"
	
	minetest.show_formspec(name, "piano_keyboard", "size[23.2,9] bgcolor[#08080866;true] box[-0.3,-0.2;23.6,7.8;#000000cc] image_button[0,0.1;1.2,7;"..w_note..";c3;;false;false;"..w_pressed.."] image_button[1.1,0.1;1.2,7;"..w_note..";d3;;false;false;"..w_pressed.."] image_button[2.2,0.1;1.2,7;"..w_note..";e3;;false;false;"..w_pressed.."] image_button[3.3,0.1;1.2,7;"..w_note..";f3;;false;false;"..w_pressed.."] image_button[4.4,0.1;1.2,7;"..w_note..";g3;;false;false;"..w_pressed.."] image_button[5.5,0.1;1.2,7;"..w_note..";a3;;false;false;"..w_pressed.."] image_button[6.6,0.1;1.2,7;"..w_note..";b3;;false;false;"..w_pressed.."] image_button[7.7,0.1;1.2,7;"..w_note..";c1;;false;false;"..w_pressed.."] image_button[8.8,0.1;1.2,7;"..w_note..";d1;;false;false;"..w_pressed.."] image_button[9.9,0.1;1.2,7;"..w_note..";e1;;false;false;"..w_pressed.."] image_button[11,0.1;1.2,7;"..w_note..";f1;;false;false;"..w_pressed.."] image_button[12.1,0.1;1.2,7;"..w_note..";g1;;false;false;"..w_pressed.."] image_button[13.2,0.1;1.2,7;"..w_note..";a1;;false;false;"..w_pressed.."] image_button[14.3,0.1;1.2,7;"..w_note..";b1;;false;false;"..w_pressed.."] image_button[15.4,0.1;1.2,7;"..w_note..";c2;;false;false;"..w_pressed.."] image_button[16.5,0.1;1.2,7;"..w_note..";d2;;false;false;"..w_pressed.."] image_button[17.6,0.1;1.2,7;"..w_note..";e2;;false;false;"..w_pressed.."] image_button[18.7,0.1;1.2,7;"..w_note..";f2;;false;false;"..w_pressed.."] image_button[19.8,0.1;1.2,7;"..w_note..";g2;;false;false;"..w_pressed.."] image_button[20.9,0.1;1.2,7;"..w_note..";a2;;false;false;"..w_pressed.."] image_button[22,0.1;1.2,7;"..w_note..";b2;;false;false;"..w_pressed.."] image_button[0.6,0.1;1,4.5;"..b_note..";c3_sharp;;false;false;"..b_pressed.."]  image_button[1.75,0.1;1,4.5;"..b_note..";d3_sharp;;false;false;"..b_pressed.."] image_button[3.9,0.1;1,4.5;"..b_note..";f3_sharp;;false;false;"..b_pressed.."] image_button[5.05,0.1;1,4.5;"..b_note..";g3_sharp;;false;false;"..b_pressed.."] image_button[6.15,0.1;1,4.5;"..b_note..";a3_sharp;;false;false;"..b_pressed.."] image_button[8.3,0.1;1,4.5;"..b_note..";c1_sharp;;false;false;"..b_pressed.."] image_button[9.45,0.1;1,4.5;"..b_note..";d1_sharp;;false;false;"..b_pressed.."] image_button[11.6,0.1;1,4.5;"..b_note..";f1_sharp;;false;false;"..b_pressed.."] image_button[12.75,0.1;1,4.5;"..b_note..";g1_sharp;;false;false;"..b_pressed.."] image_button[13.85,0.1;1,4.5;"..b_note..";a1_sharp;;false;false;"..b_pressed.."] image_button[15.95,0.1;1,4.5;"..b_note..";c2_sharp;;false;false;"..b_pressed.."] image_button[17.15,0.1;1,4.5;"..b_note..";d2_sharp;;false;false;"..b_pressed.."] image_button[19.3,0.1;1,4.5;"..b_note..";f2_sharp;;false;false;"..b_pressed.."] image_button[20.4,0.1;1,4.5;"..b_note..";g2_sharp;;false;false;"..b_pressed.."] image_button[21.5,0.1;1,4.5;"..b_note..";a2_sharp;;false;false;"..b_pressed.."]")
	

	end,
})


minetest.register_tool("piano:tool", {
	description = "Piano Keyboard",
	inventory_image = "piano_tool.png",
	range = 0,
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)

		local w_note = "white_button.png"
		local w_pressed = "white_button_pressed.png"
		local b_note = "black_button.png"
		local b_pressed = "black_button_pressed.png"
		
		local name = user:get_player_name()
	
		minetest.show_formspec(name, "piano_keyboard", "size[23.2,9] bgcolor[#08080866;true] box[-0.3,-0.2;23.6,7.8;#000000cc] image_button[0,0.1;1.2,7;"..w_note..";c3;;false;false;"..w_pressed.."] image_button[1.1,0.1;1.2,7;"..w_note..";d3;;false;false;"..w_pressed.."] image_button[2.2,0.1;1.2,7;"..w_note..";e3;;false;false;"..w_pressed.."] image_button[3.3,0.1;1.2,7;"..w_note..";f3;;false;false;"..w_pressed.."] image_button[4.4,0.1;1.2,7;"..w_note..";g3;;false;false;"..w_pressed.."] image_button[5.5,0.1;1.2,7;"..w_note..";a3;;false;false;"..w_pressed.."] image_button[6.6,0.1;1.2,7;"..w_note..";b3;;false;false;"..w_pressed.."] image_button[7.7,0.1;1.2,7;"..w_note..";c1;;false;false;"..w_pressed.."] image_button[8.8,0.1;1.2,7;"..w_note..";d1;;false;false;"..w_pressed.."] image_button[9.9,0.1;1.2,7;"..w_note..";e1;;false;false;"..w_pressed.."] image_button[11,0.1;1.2,7;"..w_note..";f1;;false;false;"..w_pressed.."] image_button[12.1,0.1;1.2,7;"..w_note..";g1;;false;false;"..w_pressed.."] image_button[13.2,0.1;1.2,7;"..w_note..";a1;;false;false;"..w_pressed.."] image_button[14.3,0.1;1.2,7;"..w_note..";b1;;false;false;"..w_pressed.."] image_button[15.4,0.1;1.2,7;"..w_note..";c2;;false;false;"..w_pressed.."] image_button[16.5,0.1;1.2,7;"..w_note..";d2;;false;false;"..w_pressed.."] image_button[17.6,0.1;1.2,7;"..w_note..";e2;;false;false;"..w_pressed.."] image_button[18.7,0.1;1.2,7;"..w_note..";f2;;false;false;"..w_pressed.."] image_button[19.8,0.1;1.2,7;"..w_note..";g2;;false;false;"..w_pressed.."] image_button[20.9,0.1;1.2,7;"..w_note..";a2;;false;false;"..w_pressed.."] image_button[22,0.1;1.2,7;"..w_note..";b2;;false;false;"..w_pressed.."] image_button[0.6,0.1;1,4.5;"..b_note..";c3_sharp;;false;false;"..b_pressed.."]  image_button[1.75,0.1;1,4.5;"..b_note..";d3_sharp;;false;false;"..b_pressed.."] image_button[3.9,0.1;1,4.5;"..b_note..";f3_sharp;;false;false;"..b_pressed.."] image_button[5.05,0.1;1,4.5;"..b_note..";g3_sharp;;false;false;"..b_pressed.."] image_button[6.15,0.1;1,4.5;"..b_note..";a3_sharp;;false;false;"..b_pressed.."] image_button[8.3,0.1;1,4.5;"..b_note..";c1_sharp;;false;false;"..b_pressed.."] image_button[9.45,0.1;1,4.5;"..b_note..";d1_sharp;;false;false;"..b_pressed.."] image_button[11.6,0.1;1,4.5;"..b_note..";f1_sharp;;false;false;"..b_pressed.."] image_button[12.75,0.1;1,4.5;"..b_note..";g1_sharp;;false;false;"..b_pressed.."] image_button[13.85,0.1;1,4.5;"..b_note..";a1_sharp;;false;false;"..b_pressed.."] image_button[15.95,0.1;1,4.5;"..b_note..";c2_sharp;;false;false;"..b_pressed.."] image_button[17.15,0.1;1,4.5;"..b_note..";d2_sharp;;false;false;"..b_pressed.."] image_button[19.3,0.1;1,4.5;"..b_note..";f2_sharp;;false;false;"..b_pressed.."] image_button[20.4,0.1;1,4.5;"..b_note..";g2_sharp;;false;false;"..b_pressed.."] image_button[21.5,0.1;1,4.5;"..b_note..";a2_sharp;;false;false;"..b_pressed.."]")
	


	



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







minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname=="piano_keyboard" then

		
		local pos = player:get_pos()
		
		if fields.c3 then
			minetest.sound_play("noteblock_c3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.d3 then
			minetest.sound_play("noteblock_d3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.e3 then
			minetest.sound_play("noteblock_e3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.f3 then
			minetest.sound_play("noteblock_f3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.g3 then
			minetest.sound_play("noteblock_g3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.a3 then
			minetest.sound_play("noteblock_a3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.b3 then
			minetest.sound_play("noteblock_b3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
			
		elseif fields.c1 then
			minetest.sound_play("noteblock_c", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.d1 then
			minetest.sound_play("noteblock_d", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.e1 then
			minetest.sound_play("noteblock_e", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.f1 then
			minetest.sound_play("noteblock_f", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.g1 then
			minetest.sound_play("noteblock_g", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.a1 then
			minetest.sound_play("noteblock_a", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.b1 then
			minetest.sound_play("noteblock_b", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)

		elseif fields.c2 then
			minetest.sound_play("noteblock_c2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.d2 then
			minetest.sound_play("noteblock_d2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.e2 then
			minetest.sound_play("noteblock_e2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.f2 then
			minetest.sound_play("noteblock_f2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.g2 then
			minetest.sound_play("noteblock_g2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.a2 then
			minetest.sound_play("noteblock_a2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.b2 then
			minetest.sound_play("noteblock_b2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)

		elseif fields.c3_sharp then
			minetest.sound_play("noteblock_csharp3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.d3_sharp then
			minetest.sound_play("noteblock_dsharp3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.f3_sharp then
			minetest.sound_play("noteblock_fsharp3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.g3_sharp then
			minetest.sound_play("noteblock_gsharp3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.a3_sharp then
			minetest.sound_play("noteblock_asharp3", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)

		elseif fields.c1_sharp then
			minetest.sound_play("noteblock_csharp", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.d1_sharp then
			minetest.sound_play("noteblock_dsharp", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.f1_sharp then
			minetest.sound_play("noteblock_fsharp", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.g1_sharp then
			minetest.sound_play("noteblock_gsharp", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.a1_sharp then
			minetest.sound_play("noteblock_asharp", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)

		elseif fields.c2_sharp then
			minetest.sound_play("noteblock_csharp2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.d2_sharp then
			minetest.sound_play("noteblock_dsharp2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.f2_sharp then
			minetest.sound_play("noteblock_fsharp2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.g2_sharp then
			minetest.sound_play("noteblock_gsharp2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)
		elseif fields.a2_sharp then
			minetest.sound_play("noteblock_asharp2", {pos = pos, max_hear_distance = 10, gain = 1.0,})
			particle_effect(pos)

		end



	end
end)




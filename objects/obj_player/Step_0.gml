
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

// flip sprite

if (move_x != 0) image_xscale = sign(move_x) * 2


/*
if (!place_meeting(x, y+1, solid_objs))
{
	move_y = 1
}
*/

// detect solid objects

// place_meeting(x, y+2, solid_but_not_solid_objs)
if (sign(move_y) == 1 and place_meeting(x, y+move_y, solid_objs))
{
	while(!place_meeting(x, y+1, solid_objs))
	{
		y += 1
	}

	move_y = 0
	// jump if on solid object

	if (keyboard_check(ord("Z")))
	{
		move_y = -jump_speed
		audio_play_sound(snd_jump, 1, false)
	}
}
else
{
	if (move_y < 10)
	{
		// fall if no solid object

		move_y += grv
	}
}

// slopes fix


if (!place_meeting(x+move_x, y+2, solid_objs) && place_meeting(x+move_x, y+10, solid_objs))
{
	move_y = abs(move_x)
	move_x = 0
}



// dash

if (keyboard_check_pressed(ord("X")) and dash_timer <= -2)
{
	if (move_x > 0)
	{
		//move_x += 200
		dash_timer = 3
		dash_dir = 1

		//x = lerp(x, move_x + 5000, 0.1);
		//var target = x + 50
		//move_towards_point(target, y, 10)

		self.part = part_system_create(part_player_dash2)
		part_particles_create(self.part, x, y, 4, 1)

		self.part = part_system_create(part_player_dash1)
		part_particles_create(self.part, x, y, 3, 1)
		audio_play_sound(snd_dash, 1, false)
	}
	else if (move_x < 0)
	{
		//move_x -= 200
		dash_timer = 3
		dash_dir = -1

		//x = lerp(x, move_x - 5000, 0.1);
		//var target = x - 50
		//move_towards_point(target, y, 10)

		self.part = part_system_create(part_player_dash1)
		part_particles_create(self.part, x, y, 3, 1)

		self.part = part_system_create(part_player_dash2)
		part_particles_create(self.part, x, y, 4, 1)
		audio_play_sound(snd_dash, 1, false)
	}
}


dash_timer -= 0.1
if (dash_timer > 0)
{
	//move_y = 0
	if (dash_dir == 1)
	{
		move_x = 10
	}else if (dash_dir == -1)
	{
		move_x = -10
	}
}

if (place_meeting(x, y+10, solid_but_not_solid_objs))
{
	var kek = instance_place(x, y+10, solid_but_not_solid_objs);
	// jump if on obj_destroy
	move_y = -jump_speed
	kek.destroy()
}


// run

if (keyboard_check(vk_shift) and (keyboard_check(vk_right) or keyboard_check(vk_left)))
{
	if (keyboard_check(vk_right) - keyboard_check(vk_left) != 0)
	{
		move_speed = run_speed
		run_timer += 0.1
	}
	else
	{
		run_timer = 0
	}
}
else
{
	move_speed = 4
	run_timer = 0
}

/*
if (run_timer > 0.5)
{
	run_speed = 4
}
if (run_timer > 2)
{
	run_speed = 6
}
if (run_timer > 5)
{
	run_speed = 10
}
*/
if (run_timer < 5)
{
	run_speed = run_timer * 2
}
if (run_timer == 7.9)
{
	self.part = part_system_create(part_player_dash1)
	part_particles_create(self.part, x, y, 3, 1)

	self.part = part_system_create(part_player_dash2)
	part_particles_create(self.part, x, y, 4, 1)
	
	audio_play_sound(snd_dash, 1, false)
}
if (run_timer > 8)
{
	run_speed = 13
	if (keyboard_check_pressed(vk_up))
	{
		run_timer = 0
		move_x = 0
		move_y = -super_jump_speed
		
		self.part = part_system_create(part_player_dash1)
		part_particles_create(self.part, x, y, 3, 1)

		self.part = part_system_create(part_player_dash2)
		part_particles_create(self.part, x, y, 4, 1)
		audio_play_sound(snd_superjump, 1, false)
	}
	
	if (place_meeting(x+2, y-8, solid_objs))
	{
		run_timer = 0
		move_x -= 100
		audio_play_sound(snd_hit, 1, false)
		self.part = part_system_create(part_hurt)
		part_particles_create(self.part, x, y, 2, 10)
		show_debug_message("ouch")
	}
	if (place_meeting(x-2, y-8, solid_objs))
	{
		run_timer = 0
		move_x += 100
		audio_play_sound(snd_hit, 1, false)
		self.part = part_system_create(part_hurt)
		part_particles_create(self.part, x, y, 2, 10)
		show_debug_message("ouch")
	}
}

/*
if (place_meeting(x+1, y-16, solid_objs) or place_meeting(x-1, y-16, solid_objs))
{
	move_speed = 0
	run_timer = 0
	if (run_timer > 8)
	{
		
	}
}
*/

// move and collide

move_and_collide(move_x, move_y, solid_objs);

// animations


if (!place_meeting(x, y+2, solid_objs))
{
	sprite_index = spr_player_jump
}

if (move_x == 0 and place_meeting(x, y+2, solid_objs))
{
	sprite_index = spr_player_idle
}

if (move_x != 0 and place_meeting(x, y+2, solid_objs))
{
	sprite_index = spr_player_walk
}

if (run_timer > 8)
{
	sprite_index = spr_player_run

}

// something

if (keyboard_check_pressed(vk_enter))
{
	show_debug_message("restart")
	audio_stop_all()
	game_restart()
	score = 0
}

cooldown -= 0.1

if (room != room_last and room != room_first and room != hub1)
{
	global.seconds += 1/60
	global.msTimer4gxGames += 1/60
	if (global.seconds < 60 and global.seconds > 59.9)
	{
		global.minuts += 1
		global.seconds = 0
	}
}

if (isPanic)
{
	if (alarm[0] < 20 * 60)
	{

		camera_set_view_angle(view_camera[0], 0.3)
	}
	if (alarm[0] < 19 * 60)
	{

		camera_set_view_angle(view_camera[0], 0.6)
	}
	if (alarm[0] < 18 * 60)
	{

		camera_set_view_angle(view_camera[0], 0.9)
	}
	
	
		
}
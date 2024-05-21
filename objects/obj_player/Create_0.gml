move_speed = 4
jump_speed = 14
super_jump_speed = 21

move_x = 0
move_y = 0
grv = 0.6

dash_timer = 0
dash_dir = 1

run_speed = 1
run_timer = 0

cooldown = 0

solid_objs = [
	obj_ground, 
	obj_slope,
	obj_switch_block,
]

solid_but_not_solid_objs = [
	obj_destroy
]

all_solid_objs = [
	obj_ground, 
	obj_slope,
	obj_destroy
]

puk = 0.4
step = 0

isPanic = false

function panic(time)
{
	alarm_set(0,time * 60)
	show_debug_message("panic")
	audio_play_sound(mus_escape, 0, true)
	audio_play_sound(snd_hit, 1, false)
	isPanic = true
	
	for (var i = 0; i < instance_number(obj_switch_block); ++i;)
	{
		block = instance_find(obj_switch_block,i)
		if (block.switched == true and block.isSwitched == false)
		{
			block.switched = false
		}
		else if (block.isSwitched == false)
		{
			block.switched = true
		}
		block.isSwitched = true
	}
}

done = false

seconds = 0
minuts = 0
msTimer4gxGames = 0
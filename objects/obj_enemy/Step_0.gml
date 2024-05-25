
if (place_meeting(x+2, y, solid_objs))
{
	dir = -1
}
if (place_meeting(x-2, y, solid_objs))
{
	dir = 1
}

move_x = dir * move_speed

// flip sprite

if (move_x != 0 and sprite_index != spr_player_scared) image_xscale = sign(move_x) * 2

if (sign(move_y) == 1 and place_meeting(x, y+move_y, solid_objs))
{
	while(!place_meeting(x, y+1, solid_objs))
	{
		y += 1
	}

	move_y = 0
}
else
{
	if (move_y < 10)
	{
		// fall if no solid object

		move_y += grv
	}
}

var plrsight = collision_line(x - 300, y, x + 300, y, obj_player, false, true)
if plrsight {
	if plrsight.move_speed > 7.9 {
		sprite_index = spr_player_scared
		image_index = randomAnim
		move_x = 0
		image_xscale = -sign(x - plrsight.x) * 2
	}else sprite_index = spr_player_walk
}


move_and_collide(move_x, move_y, solid_objs)


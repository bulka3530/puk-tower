draw_set_halign(fa_left)
draw_set_valign(fa_top)

if (room != room_last and room != room_first and room != hub1 and !hideHud)
{
	draw_text(5,5, "X: " + string(x) + " X speed: " + string(move_x))
	draw_text(5,25, "Y: " + string(y) + " Y speed: " + string(move_y))
	draw_text(5,45, "Player speed: " + string(move_speed))
	draw_text(5,65, "Standing on ground? " + string(place_meeting(x, y+2, solid_objs)))
	draw_text(5,85, "Standing on something else? " + string(place_meeting(x, y+2, solid_but_not_solid_objs)))
	draw_text(5,105, "Current room: " + room_get_name(room)) 
	draw_text(5,125, "FPS: " + string(fps))
	draw_text(5,150, string(global.minuts)+"."+string(global.seconds))

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

		draw_sprite_stretched(spr_tv, 0, 1155, 40, 64*3, 48*3)
	
	draw_text_transformed(1234, 120, string(score), 3, 3, sin(step) * 5)
	
	if (global.key)
	{
		draw_sprite_stretched(spr_key, 0, 1147, 150, 64, 64)
	}
	
	if (isPanic)
	{
		if (alarm[0] < 20 * 60)
		{
			draw_text_transformed_colour(1366 / 2, 700, string(alarm[0] / 60), 3, 3, 0, c_red, c_red, c_white, c_white, 1)
		}
		else
		{
			draw_text_transformed_colour(1366 / 2, 700, string(alarm[0] / 60), 3, 3, 0, c_white, c_white, c_white, c_white, 1)
		}
	}

}
puk -= 0.1
if puk <= 0
{
	puk = 0.4
	step += 1
}
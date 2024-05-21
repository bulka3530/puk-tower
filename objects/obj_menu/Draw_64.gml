draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_colour(1366 / 2, 300,"puk tower",  5, 5, 0, c_white, c_white, c_white, c_white, 1)
draw_text_transformed_colour(1366 / 2, 350,"demo",  3, 3, 0, c_white, c_white, c_white, c_white, 1)

if (option == 1)
{
	draw_text_transformed_colour(683 + sin(step) * 5, 500,"play",  3, 3, 0, c_white, c_white, c_white, c_white, 1)
	draw_text_transformed_colour(1366 / 2, 550,"don't play",  3, 3, 0, c_white, c_white, c_white, c_white, 0.5)
	if (keyboard_check_pressed(ord("Z")))
	{
		room_goto_next()
		if (instance_exists(obj_player))
		{
			obj_player.x = 191
			obj_player.y = 413
		}
	}
}
else
{
	draw_text_transformed_colour(1366 / 2, 500,"play",  3, 3, 0, c_white, c_white, c_white, c_white, 0.5)
	draw_text_transformed_colour(683 + sin(step) * 5, 550,"don't play",  3, 3, 0, c_white, c_white, c_white, c_white, 1)
	if (keyboard_check_pressed(ord("Z")))
	{
		game_end(0)
	}
}

if (keyboard_check_pressed(vk_down))
{
	option ++
	if (option >= 3)
	{
		option = 1
	}
}

if (keyboard_check_pressed(vk_up))
{
	option --
	if (option <= 0)
	{
		option = 2
	}
}


puk -= 0.1
if puk <= 0
{
	puk = 0.4
	step += 1
}

// very useful menu ._.

//draw_sprite_stretched(logo,logo,0,0,128,128)
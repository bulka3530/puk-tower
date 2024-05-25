if (global.key == false)
{	
	draw_sprite(spr_lock,0,x,y)
}
else
{
	draw_set_alpha(0.5)
	draw_sprite(spr_lock,1,x,y)
	draw_set_alpha(1)
}
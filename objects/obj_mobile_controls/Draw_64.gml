
draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_rectangle_color(128, 511, 192, 575, c_red,c_green,c_blue,c_yellow,false) // up
draw_text_transformed(128, 511, "up", 2, 2, 0)

draw_rectangle_color(128, 703, 192, 639, c_yellow,c_red,c_green,c_blue,false) // down
draw_text_transformed(128, 703-64, "down", 2, 2, 0)

draw_rectangle_color(64, 575, 128, 639, c_blue,c_yellow,c_red,c_green,false) // left
draw_text_transformed(64, 575, "left", 2, 2, 0)

draw_rectangle_color(192, 575, 256, 639, c_green,c_blue,c_yellow,c_red,false) // right
draw_text_transformed(192, 575, "rigt", 2, 2, 0)


draw_rectangle_color(1088, 576, 1152, 639, c_green,c_blue,c_yellow,c_red,false)
draw_text_transformed(1088, 576, "z", 2, 2, 0)

draw_rectangle_color(1152, 576, 1216, 639, c_green,c_blue,c_yellow,c_red,false)
draw_text_transformed(1152, 576, "x", 2, 2, 0)

draw_rectangle_color(1216, 576, 1280, 639, c_green,c_blue,c_yellow,c_red,false)
draw_text_transformed(1216, 576, "run", 2, 2, 0)

/*
draw_rectangle(192, 575, 192, 575, true)
draw_text_transformed(224, 607, "→", 2, 2, 0)

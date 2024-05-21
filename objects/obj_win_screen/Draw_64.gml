draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_colour(1366 / 2, 768/2-150,"level completed!",  4, 4, 0, c_white, c_white, c_white, c_white, 1)
draw_text_transformed_colour(1366 / 2, 768/2-100,"your rank is...",  4, 4, 0, c_white, c_white, c_white, c_white, 1)

draw_text_transformed_colour(1366 / 2, 768/2+50,"your score is " + string(score),  2, 2, 0, c_white, c_white, c_white, c_white, 1)

draw_text_transformed_colour(1366 / 2, 768/2+250,string(global.minuts)+"."+string(global.seconds),  4, 4, 0, c_white, c_white, c_white, c_white, 1)

if score <= 140{
    rank = "D"
	draw_text_transformed_colour(1366 / 2, 768/2,"D",  6, 6, 0, c_black, c_black, c_white, c_white, 1)
	draw_text_transformed_colour(1366 / 2, 768/2+150,"try again!",  4, 4, 0, c_white, c_white, c_white, c_white, 1)
}
else if score <= 280{
    rank = "C"
	draw_text_transformed_colour(1366 / 2, 768/2,"C",  6, 6, 0, c_green, c_green, c_white, c_white, 1)
	draw_text_transformed_colour(1366 / 2, 768/2+150,"i know you can do better!",  4, 4, 0, c_white, c_white, c_white, c_white, 1)
}
else if score <= 420{
    rank = "B"
	draw_text_transformed_colour(1366 / 2, 768/2,"B",  6, 6, 0, c_blue, c_blue, c_white, c_white, 1)
	draw_text_transformed_colour(1366 / 2, 768/2+150,"good!",  4, 4, 0, c_white, c_white, c_white, c_white, 1)
}
else if score <= 560 or score >= 560 and score < 700{
    rank = "A"
	draw_text_transformed_colour(1366 / 2, 768/2,"A",  6, 6, 0, c_red, c_red, c_white, c_white, 1)
	draw_text_transformed_colour(1366 / 2, 768/2+150,"nice!",  4, 4, 0, c_white, c_white, c_white, c_white, 1)
}
else if score >= 700{
    rank = "S"
	draw_text_transformed_colour(1366 / 2, 768/2,"S",  6, 6, 0, c_yellow, c_yellow, c_white, c_white, 1)
	draw_text_transformed_colour(1366 / 2, 768/2+150,"well done!",  4, 4, 0, c_white, c_white, c_white, c_white, 1)
}
else{
    rank = "IDK"
	draw_text_transformed_colour(1366 / 2, 768/2,"IDK",  6, 6, 0, c_red, c_yellow, c_white, c_green, 1)
	draw_text_transformed_colour(1366 / 2, 768/2+150,"report this!",  4, 4, 0, c_white, c_white, c_white, c_white, 1)
}

// rank system
// max points 700
// 700 / 5
// 700 560 420 280 140

// well done! S 700 or >
// nice! A 560 or >
// good! B 420 or >
// i know you can do better! C 280 or >
// try again! D 140 or >
// what IDK ? or > (displayed when something happened with score)


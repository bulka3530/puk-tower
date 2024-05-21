if (!browser_safari_mobile)
{
	instance_destroy()
}

up = virtual_key_add(128, 511, 64, 64, vk_up) // up

down = virtual_key_add(128, 640, 64, 64, vk_down) // down

left = virtual_key_add(64, 575, 64, 64, vk_left) // left

right = virtual_key_add(192, 575, 64, 64, vk_right) // right


key_z = virtual_key_add(1088, 576, 64, 64, ord("Z")) // key_z

key_x = virtual_key_add(1152, 576, 64, 64, ord("X")) // key_x

run = virtual_key_add(1216, 576, 64, 64, vk_shift) // run

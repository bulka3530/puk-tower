if (keyboard_check_released(vk_up) and isPanic)
{
	room_goto(room_last)
	x = -696969
	alarm_set(0, 65465465)
	audio_stop_all()
	isPanic = false
	
}
if (isPanic)
{	
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

/*
if (room == room_last and !done)
{
	if (gxc_get_query_param("challenge") == "5b4709fc-d386-4f04-a5a9-98fc087310bb")
	{
		gxc_submit_challenge_score(string(global.minuts)+"."+string(global.seconds))
		show_debug_message("done uploading")
		done = true
	}
}
*/


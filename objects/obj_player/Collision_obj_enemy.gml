if (dash_timer > 0 or move_speed > 7.9)
{
	audio_play_sound(snd_hit, 1, false)
	self.part = part_system_create(part_hurt)
	part_particles_create(self.part, x, y, 2, 10)
	instance_destroy(other)
}
else if (cooldown <= 0)	
{
	move_x = 0
	move_y = 0
	cooldown = 5
	audio_play_sound(snd_hit, 1, false)
	if (score >= 50)
	{
		score -= 50
		self.part = part_system_create(part_collectable)
		part_particles_create(self.part, x, y, 1, 10)
		self.part = part_system_create(part_hurt)
		part_particles_create(self.part, x, y, 2, 10)
		show_debug_message("ouch")
	}
	else
	{
		score = 0
		self.part = part_system_create(part_hurt)
		part_particles_create(self.part, x, y, 2, 10)
		show_debug_message("ouch")
	}
}
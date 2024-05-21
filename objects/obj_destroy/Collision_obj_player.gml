if (other.dash_timer > 0 or other.move_speed >= 6)
{
	self.part = part_system_create(part_block_destroy)
	part_particles_create(self.part, x, y, 0, 10);
	audio_play_sound(snd_destroy, 1, false)
	instance_destroy()
}
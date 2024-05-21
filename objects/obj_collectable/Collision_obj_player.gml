self.part = part_system_create(part_collectable)
part_particles_create(self.part, x, y, 1, 1);
score += 5
audio_play_sound(snd_collect, 1, false)
instance_destroy()
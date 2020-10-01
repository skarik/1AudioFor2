/// @description Music
m_sound = sound_play_at(x, y, "princess-loop.ogg");
m_sound.parent = id;
m_sound.gain = 0.5;
m_sound.loop = true;
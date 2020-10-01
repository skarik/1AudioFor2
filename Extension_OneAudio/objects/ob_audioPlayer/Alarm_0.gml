/// @description begin playing sound
m_buffer = faudioBufferLoad(m_sound);
if (m_buffer == 0)
{
	show_error("Could not load sound: \"" + m_sound + "\"", true);
}

m_source = faudioSourceCreate(m_buffer);
faudioSourceSetLooped(m_source, loop);

faudioSourceSetFalloffModel(m_source, falloff_model, falloff_factor);
faudioSourceSetFalloff(m_source, falloff_start, falloff_end);
faudioSourceSetPitch(m_source, pitch);
faudioSourceSetGain(m_source, gain);
faudioSourceSetChannel(m_source, channel);
faudioSourceSetPosition(m_source, x, y, 0);
faudioSourceSetSpatial(m_source, spatial);
	
if (!loop)
{
	m_despawnTimerEnabled = true;
	m_despawnTimer = 0.0;
	var sound_length = faudioSourceGetSoundLength(m_source);
	if (sound_length != 0.0)
	{
		m_despawnTimer = sound_length + 1.0;
	}
}

faudioSourcePlay(m_source, true);

/// @description move audio to parent position
if (m_source != 0)
{
	if (instance_exists(parent))
	{
		x = parent.x;
		y = parent.y;
		faudioSourceSetPosition(m_source, x, y, 0);
	}

	// update params
	faudioSourceSetFalloffModel(m_source, falloff_model, falloff_factor);
	faudioSourceSetFalloff(m_source, falloff_start, falloff_end);
	faudioSourceSetPitch(m_source, pitch);
	faudioSourceSetGain(m_source, gain);
	faudioSourceSetChannel(m_source, channel);
	faudioSourceSetSpatial(m_source, spatial);

	// update destroy timer
	if (m_despawnTimerEnabled)
	{
		if (m_despawnTimer == 0.0)
		{
			var sound_length = faudioSourceGetSoundLength(m_source);
			if (sound_length != 0.0)
			{
				m_despawnTimer = sound_length + 1.0;
			}
		}
		else
		{
			if (m_despawnTimerCounter >= m_despawnTimer)
			{
				instance_destroy();
				exit;
			}
			m_despawnTimerCounter += delta_time / 1000000.0;
		}
	}
}
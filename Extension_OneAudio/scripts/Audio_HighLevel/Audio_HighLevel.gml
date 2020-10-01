#macro kAudioSpatial2D 0.0
#macro kAudioSpatial3D 1.0

/// @function sound_play(audio)
/// @param audio
/// @notes loop, priority, falloff_start, falloff_end, falloff_factor, gain, pitch, parent
function sound_play(sound_to_play)
{
	var sound = sound_play_at(0, 0, sound_to_play);
	sound.spatial = kAudioSpatial2D;
	return sound;
}

/// @function sound_play_channel(audio, channel)
/// @param audio
/// @param channel
/// @notes loop, priority, falloff_start, falloff_end, falloff_factor, gain, pitch, parent
function sound_play_channel(sound_to_play, channel_to_play_on)
{
	var sound = sound_play_at(0, 0, sound_to_play);
	sound.spatial = kAudioSpatial2D;
	sound.channel = channel_to_play_on;
	return sound;
}

/// @function sound_play_at(x, y, audio)
/// @param x
/// @param y
/// @param audio
/// @notes loop, priority, falloff_start, falloff_end, falloff_factor, gain, pitch, parent
function sound_play_at(at_x, at_y, sound_to_play)
{
	if (!is_string(sound_to_play))
	{
		show_error("invalid input to sound_play_at()", true);
	}

	if (sound_to_play != noone)
	{
		var player = instance_create_depth(at_x, at_y, 0, ob_audioPlayer);
			player.m_sound = sound_to_play;
		
		return player;
	}

	return noone;
}

/// @function sound_update_params(instance_to_update)
/// @param instance_to_update
function sound_update_params(sound)
{
	with (sound)
	{
		if (m_source != 0)
		{
			faudioSourceSetFalloff(m_source, falloff_start, falloff_end);
			faudioSourceSetPitch(m_source, pitch);
			faudioSourceSetGain(m_source, gain);
			faudioSourceSetPosition(m_source, x, y, 0);
		}
	}
}

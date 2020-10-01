/*loop = false;
priority = 5;

falloff_start = 100;
falloff_end = 1000;
falloff_factor = 1.0;
falloff_model = kFAFalloffExponential;

gain = 1.0;
pitch = 1.0;
channel = kFAMixChannelDefault;
spatial = kAudioSpatial3D;

parent = noone;*/

if (!instance_exists(Audio))
{
	instance_create_depth(0, 0, 0, Audio);
}

// System:
m_sound = "";
m_buffer = 0;
m_source = 0;

alarm[0] = 1;  // Alarm to play sound

m_despawnTimerEnabled = false;
m_despawnTimer = 0.0;
m_despawnTimerCounter = 0.0;
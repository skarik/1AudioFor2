/// @description Create effect

// If you have a safe creation or init setup at the start, you won't need this safety net
if (!instance_exists(Audio))
{
	instance_create_depth(0, 0, 0, Audio);
}

// Create the actual effect on the default channel
effect = faudioEffectCreateLowPass1(kFAMixChannelDefault);

m_cutoff = 440;
m_fadewidth = 100;
m_strength = 0.0;
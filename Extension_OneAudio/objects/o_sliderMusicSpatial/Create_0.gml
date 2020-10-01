// Inherit the parent event
event_inherited();

m_displayString = "Music\nSpatial";
m_minDisplayValue = kAudioSpatial2D;
m_maxDisplayValue = kAudioSpatial3D;

m_value = (kAudioSpatial3D - m_minDisplayValue) / (m_maxDisplayValue - m_minDisplayValue);
m_yvalue = y + sprite_height * (1.0 - m_value);
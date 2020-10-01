// Inherit the parent event
event_inherited();

m_displayString = "Music\nPitch";
m_minDisplayValue = 0.1;
m_maxDisplayValue = 4.0;

m_value = (1.0 - m_minDisplayValue) / (m_maxDisplayValue - m_minDisplayValue);
m_yvalue = y + sprite_height * (1.0 - m_value);
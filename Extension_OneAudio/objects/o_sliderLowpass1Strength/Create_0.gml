// Inherit the parent event
event_inherited();

m_displayString = "Lowpass1\nStrength";
m_minDisplayValue = 0.0;
m_maxDisplayValue = 1.0;

m_value = (0.0 - m_minDisplayValue) / (m_maxDisplayValue - m_minDisplayValue);
m_yvalue = y + sprite_height * (1.0 - m_value);
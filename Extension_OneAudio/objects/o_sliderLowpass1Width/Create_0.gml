// Inherit the parent event
event_inherited();

m_displayString = "Lowpass1\nWidth";
m_minDisplayValue = 50;
m_maxDisplayValue = 4000;

m_value = (100 - m_minDisplayValue) / (m_maxDisplayValue - m_minDisplayValue);
m_value = logn(100, m_value * 0.99 + 0.01) + 1;
m_yvalue = y + sprite_height * (1.0 - m_value);
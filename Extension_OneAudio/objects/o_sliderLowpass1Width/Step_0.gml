/// @description Update audio gain

o_effectLowPass.m_fadewidth = lerp(m_minDisplayValue, m_maxDisplayValue, (power(100, m_value - 1) - 0.01) / 0.99 );
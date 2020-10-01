/// @description Draw slider

draw_set_color(c_white);
draw_set_alpha(0.3);
draw_rectangle(xstart - 4, ystart, xstart + 4, ystart + sprite_height, false);
draw_set_alpha(1.0);
draw_rectangle(xstart - 4, ystart, xstart + 4, ystart + sprite_height, true);
draw_circle(xstart, m_yvalue, 4, false);
draw_circle(xstart, m_yvalue, 10, true);

draw_set_font(f_ademoArial12);

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(xstart, ystart + sprite_height + 4, m_displayString);

draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(xstart - 12, ystart, string(m_maxDisplayValue));

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(xstart - 12, ystart + sprite_height, string(m_minDisplayValue));

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(xstart + 12, m_yvalue, string(lerp(m_minDisplayValue, m_maxDisplayValue, (power(100, m_value - 1) - 0.01) / 0.99)));
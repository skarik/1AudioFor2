/// @description Perform value updating & position limiting

m_yvalue += (y - ystart);
if (om_dragManager.m_dragTarget == id)
{
	om_dragManager.m_dragOffset.y -= (y - ystart);
}
y = ystart;

x = xstart;
m_yvalue = clamp(m_yvalue, ystart, ystart + sprite_height);
m_value = 1.0 - (m_yvalue - ystart) / sprite_height;
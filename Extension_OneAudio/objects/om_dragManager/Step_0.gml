/// @description Update click & drag

if (mouse_check_button_pressed(mb_left))
{
	// Locate item under the mouse & calculate drag offsets
	m_dragTarget = collision_point(mouse_x, mouse_y, ob_draggableObject, true, true);
	if (instance_exists(m_dragTarget))
	{
		m_dragOffset.x = m_dragTarget.x - mouse_x;
		m_dragOffset.y = m_dragTarget.y - mouse_y;
	}
}

// Drag item around if it exists
if (instance_exists(m_dragTarget))
{
	m_dragTarget.x = mouse_x + m_dragOffset.x;
	m_dragTarget.y = mouse_y + m_dragOffset.y;
}

if (mouse_check_button_released(mb_left))
{
	m_dragTarget = noone;
}
/// @description Setup
m_initialized = false;

// Singleton this object
if (instance_number(object_index) > 1)
{
	instance_destroy();
	exit;
}

// Start up audio
faudioInitialize(0);
m_initialized = true;
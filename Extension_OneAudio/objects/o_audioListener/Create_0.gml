/// @description Create listener
if (!instance_exists(Audio))
{
	instance_create_depth(0, 0, 0, Audio);
}
listener = faudioListenerCreate();
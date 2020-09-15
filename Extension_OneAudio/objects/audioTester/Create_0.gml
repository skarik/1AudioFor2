/// @description Start audio

faudioInitialize();

var filename = "princess-loop.ogg";
show_debug_message("loading: " + filename);

buffer = faudioBufferLoad(filename);
show_debug_message("new buffer: " + string(buffer));

source = faudioSourceCreate(buffer);
show_debug_message("new source: " + string(source));

faudioSourcePlay(source, true);
show_debug_message("playing on source: " + string(source));
# 1Audio for GMS2.3
Look: it's another audio extension for Game Maker Studio 2.3. Imagine using this homebrew thing instead of [actual audio middleware](https://github.com/CaKlassen/gmwwise).

This was made to work around issues and odd crashes ran into when using GMS2's built-in audio system. This has parity with some amount of GMS2.3 audio features (that we use, anyways), and a small amount of DSP support (or will). 

It's a light wrapper around the [1Engine](https://github.com/skarik/1engine) audio module, also open source on Github.

## How it works
You start up the system. You make **Buffers**. You make **Sources** that play buffers. You make a **Listener** so you can hear the sources.

### Buffers
Buffers hold audio data. They're sounds - or sound streams.

### Sources
Sources play audio data. They have position, velocity, falloff behaviors, loop toggles, the works. When making a source, you give them a Buffer.

### Listeners
Listeners dictate where Sources are heard. They also have position, velocity, but also have directionality. It's defined in a terrible way (three vectors) because that makes the math way easier for things on the inside of the audio engine. One day it'll be nicer.

One day.

## Limitations
There are some format restrictions:
* WAV - For non-streamed buffers
* OGG - For streamed buffers

Also, this audio engine chews CPU. You need a couple cores, else this thing will be a stuttering mess.

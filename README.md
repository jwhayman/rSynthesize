# Synthesize

## This gem generates waveforms

Example:

    s = Synthesize.new(440, 1, 1) # 440 Hz, Max Amplitude, 1 Second
    s.square

    f = File.new("square.wav", "w")
    f.write(s.to_wav)
    f.close

Thanks to Damien Karras for the algorithms!

http://en.wikibooks.org/wiki/Sound_Synthesis_Theory/Oscillators_and_Wavetables

#Synthesis
#Generate Basic Waveforms and Noise

class Synth
  
  attr_accessor :waveform, :frequency, :amplitude, :duration, :channels, :sample_rate, :bits_per_sample
  
  def initialize(frequency, amplitude, duration)
    @frequency = frequency
    @amplitude = amplitude
    @duration = duration
    @channels = 2
    @sample_rate = 44100
    @bits_per_sample = 16
  end
  
  def sin
    step = (2 * Math::PI * @frequency).fdiv(@sample_rate)
    phase = 0
    @waveform = Array.new(@duration * @sample_rate)
    @waveform.each_index do |i|
      @waveform[i] = @amplitude * Math.sin(phase)
      
      phase = phase + step
      if phase > (2 * Math::PI)
        phase = phase - (2 * Math::PI)
      end
    end
  end
  
  def square
    step = (2 * Math::PI * @frequency).fdiv(@sample_rate)
    phase = 0
    @waveform = Array.new(@duration * @sample_rate)
    @waveform.each_index do |i|
      if phase < Math::PI
        @waveform[i] = @amplitude
      else
        @waveform[i] = -@amplitude
      end
      
      phase = phase + step
      if phase > (2 * Math::PI)
        phase = phase - (2 * Math::PI)
      end
    end
  end
  
  def sawtooth
    step = (2 * Math::PI * @frequency).fdiv(@sample_rate)
    phase = 0
    @waveform = Array.new(@duration * @sample_rate)
    @waveform.each_index do |i|
      @waveform[i] = @amplitude - (@amplitude.fdiv(Math::PI)) * phase
      
      phase = phase + step
      if phase > (2 * Math::PI)
        phase = phase - (2 * Math::PI)
      end
    end
  end
  
  def triangle
    step = (2 * Math::PI * @frequency).fdiv(@sample_rate)
    phase = 0
    @waveform = Array.new(@duration * @sample_rate)
    @waveform.each_index do |i|
      if phase < Math::PI
        @waveform[i] = -@amplitude + (2 * @amplitude.fdiv(Math::PI)) * phase
      else
        @waveform[i] = 3 * @amplitude - (2 * @amplitude.fdiv(Math::PI)) * phase
      end
      
      phase = phase + step
      if phase > (2 * Math::PI)
        phase = phase - (2 * Math::PI)
      end
    end
  end
  
  def noise
    @waveform = Array.new(@duration * @sample_rate)
    @waveform.each_index do |i|
      waveform[i] = rand(2) - 1
    end
  end
  
  def silence
    @waveform = Array.new(@duration * @sample_rate)
    @waveform.each_index do |i|
      waveform[i] = 0
    end
  end
  
  def to_wav
    waveform = Array.new
    
    @waveform.each do |w|
      value = w * ((2**@bits_per_sample) / 2)
      if value > 0
        value = value - 1
      elsif value < 0
        value = value + 1
      end
      @channels.times do |c|
       waveform.push(value)
     end
    end
    
    block_align = (@bits_per_sample / 8) * @channels
    bytes_per_second = block_align * @sample_rate
    
    header = Array[
      "RIFF",                     #Chunk ID
        bytes_per_second * @duration + 44 - 8,  #Chunk Data Size
        "WAVE",                     #RIFF Type
      "fmt ",                     #Chunk ID
        16,                         #Chunk Data Size
        1,                          #Compression Code
        @channels,                  #Number of Channels
        @sample_rate,               #Sample Rate
        bytes_per_second,           #Bytes per Second
        block_align,                #Block Align
        @bits_per_sample,           #Significant Bits per Sample
      "data",                     #Chunk ID
        bytes_per_second * @duration] #Chunk Data Size
      
        
    header_data = header.pack("A4VA4A4VvvVVvvA4V")
    wav_data = waveform.pack("s*")
    
    return header_data + wav_data
  end
end
  

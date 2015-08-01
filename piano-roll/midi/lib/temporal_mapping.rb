class TemporalMapping

  # attr_accessor :tempo, :meter

  def initialize(tempo, meter, repetitions, sixteenths_per_measure)
    @tempo = tempo
    @meter = meter
    @repetitions = repetitions
    @sixteenths_per_measure = sixteenths_per_measure
  end

  # TODO: For now put here. Could have a PatternBuilder do this work
  def build_pattern()
    picking_pattern = { "repetitions" => @repetitions }

    pattern = ""
    (1..@sixteenths_per_measure).each { pattern.concat("0,")}
    picking_pattern[:pattern] = pattern.slice(0..pattern.length-2)

    picking_pattern

  end

  def self.json_create(o)
    # TODO: May need to tweek this. (Untested)
    new(*o['data'])
  end

  def to_json(*a)
    { "tempo" => @tempo, "meter" => @meter, "picking_pattern" => [build_pattern()], "fret_hand_pattern" => [build_pattern] }.to_json(*a)
  end

end
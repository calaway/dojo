class Clock
  def initialize(hour_input, minute_input)
    @hour_input = hour_input
    @minute_input = minute_input
  end

  def self.at(hour, minute)
    new(hour, minute)
  end

  def hour
    hour = @hour_input + (@minute_input / 60)
    hour % 24
  end

  def minute
    @minute_input % 60
  end

  def to_s
    "#{hour.to_s.rjust(2, '0')}:#{minute.to_s.rjust(2, '0')}"
  end
end

module BookKeeping
  VERSION = 2
end

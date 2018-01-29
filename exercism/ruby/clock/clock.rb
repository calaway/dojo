class Clock
  def initialize(hour, minute)
    @hour = hour
    @minute = minute
    fix_minutes_and_hours
  end

  def self.at(hour, minute)
    new(hour, minute)
  end

  def fix_minutes_and_hours
    @hour = (@hour + (@minute / 60)) % 24
    @minute %= 60
  end

  def to_s
    "#{@hour.to_s.rjust(2, '0')}:#{@minute.to_s.rjust(2, '0')}"
  end

  def +(other)
    @minute += other
    fix_minutes_and_hours
    self
  end

  def ==(other)
    @minute == other.instance_variable_get(:@minute)
  end
end

module BookKeeping
  VERSION = 2
end

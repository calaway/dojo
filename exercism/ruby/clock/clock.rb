class Clock
  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute)
    new(hour, minute)
  end

  def to_s
    @hour = (@hour + (@minute / 60)) % 24
    @minute %= 60
    "#{@hour.to_s.rjust(2, '0')}:#{@minute.to_s.rjust(2, '0')}"
  end

  def +(other)
    @minute += other
    self
  end
end

module BookKeeping
  VERSION = 2
end

module Clock
  def self.at(hour, minute)
    hour += minute / 60
    hour = hour % 24
    minute = minute % 60
    "#{hour.to_s.rjust(2, '0')}:#{minute.to_s.rjust(2, '0')}"
  end
end

module BookKeeping
  VERSION = 2
end

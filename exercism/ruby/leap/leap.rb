class Year
  def self.leap?(year)
    if (year % 400).zero?
      true
    elsif (year % 100).zero?
      false
    else
      (year % 4).zero?
    end
  end
end

module BookKeeping
  VERSION = 2
end

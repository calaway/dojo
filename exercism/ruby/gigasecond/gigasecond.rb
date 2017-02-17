class Gigasecond
  def self.from(birth)
    birth + (10 ** 9)
  end
end

module BookKeeping
  VERSION = 5
end

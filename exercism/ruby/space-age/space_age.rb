class SpaceAge
  attr_reader :seconds

  SECONDS_PER_EARTH_YEAR = 31_557_600

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    seconds / SECONDS_PER_EARTH_YEAR.to_f
  end

  def on_mercury
    280.88
  end

  def on_venus
    9.78
  end

  def on_mars
    39.25
  end

  def on_jupiter
    2.41
  end

  def on_saturn
    3.23
  end

  def on_uranus
    1.21
  end

  def on_neptune
    1.58
  end

end

module BookKeeping
  VERSION = 1
end

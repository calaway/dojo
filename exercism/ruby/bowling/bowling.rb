class Game
  attr_reader :score

  def initialize
    @frame = 1
    @first_roll = true
    @previous_pins1 = 0
    @previous_pins2 = 0
    @score = 0
  end

  def roll(pins)
    @score += if @frame == 11 && @first_roll && @previous_pins2 == 10
                2 * pins
              elsif @frame > 10
                pins
              elsif @previous_pins1 == 10 && @previous_pins2 == 10
                3 * pins
              elsif @previous_pins1 == 10 || @previous_pins2 == 10
                2 * pins
              elsif @previous_pins1 + @previous_pins2 == 10
                2 * pins
              else
                pins
              end
    @previous_pins2 = @previous_pins1
    @previous_pins1 = pins
    increment_frame(pins)
  end

  def increment_frame(pins)
    if @first_roll && pins != 10
      @first_roll = false
    else
      @frame += 1
      @first_roll = true
    end
  end
end

module BookKeeping
  VERSION = 3
end

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
    @score += if @frame > 10
                pins
              elsif @previous_pins1 == 10 || @previous_pins2 == 10
                2 * pins
              elsif @previous_pins1 + @previous_pins2 == 10
                2 * pins
              else
                pins
              end
    @previous_pins2 = @previous_pins1
    @previous_pins1 = pins
    increment_frame
  end

  def increment_frame
    if @first_roll
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

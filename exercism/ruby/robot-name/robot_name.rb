class Robot
  attr_reader :name

  ALPHABET = [*"A".."Z"]

  def initialize
    reset
  end

  def generate_name
    srand
    ALPHABET[rand(26)] +
      ALPHABET[rand(26)] +
      rand(10).to_s +
      rand(10).to_s +
      rand(10).to_s
  end

  def reset
    @name = generate_name
  end
end

module BookKeeping
  VERSION = 2
end

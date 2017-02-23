class Robot
  attr_reader :name

  ALPHABET = [*"A".."Z"]

  def initialize
    reset
  end

  def generate_name
    srand
    (ALPHABET[rand(26)] * 2) + ((rand(10).to_s) * 3)
  end

  def reset
    @name = generate_name
  end
end

class Robot
  attr_reader :name

  ALPHABET = [*"A".."Z"]

  def initialize
    @name = generate_name
  end

  def generate_name
    ALPHABET[rand(26)] + ALPHABET[rand(26)] + rand(1000).to_s
  end
end

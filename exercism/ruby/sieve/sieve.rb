class Sieve
  def initialize(terminus)
    @numbers = (2..terminus).to_a
  end

  def primes
    index = 0
    while index < @numbers.length do
      @numbers = @numbers[0..index] + @numbers[index+1..-1].delete_if do |number|
        number % @numbers[index] == 0
      end
      index += 1
    end
    @numbers
  end
end

module BookKeeping
  VERSION = 1
end

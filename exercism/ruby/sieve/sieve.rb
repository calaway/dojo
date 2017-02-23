class Sieve
  attr_reader :terminus

  def initialize(terminus)
    @terminus = terminus
  end

  def primes
    (2..terminus).to_a
  end
end

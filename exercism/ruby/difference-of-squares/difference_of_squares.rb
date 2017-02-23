class Squares
  attr_reader :terminus

  def initialize(terminus)
    @terminus = terminus
  end

  def sum_one_through_n(n)
    (n * (n + 1)) / 2
  end

  def square_of_sum
    (sum_one_through_n(terminus)) ** 2
  end

  def sum_of_squares
    (1..terminus).reduce(0) do |sum, number|
      sum += number ** 2
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

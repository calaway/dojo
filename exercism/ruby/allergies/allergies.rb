class Allergies
  attr_reader :score

  ALLERGENS = %w[eggs peanuts shellfish strawberries tomatoes chocolate pollen cats].freeze

  def initialize(score)
    @score = score
  end

  def allergic_to?(allergen)
    index = ALLERGENS.index(allergen)
    score.digits(2)[index] == 1
  end

  def list
    memo = []
    ALLERGENS.zip(score.digits(2)) do |allergen, bool|
      memo << allergen if bool == 1
    end
    memo
  end
end

module BookKeeping
  VERSION = 1
end

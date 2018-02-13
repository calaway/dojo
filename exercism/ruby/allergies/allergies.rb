class Allergies
  attr_reader :score

  ALLERGENS = ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'].freeze

  def initialize(score)
    @score = score
  end

  def allergic_to?(allergen)
    index = ALLERGENS.index(allergen)
    score.digits(2)[index] == 1
  end
end

module BookKeeping
  VERSION = 1
end
